--------------------------------------------
-- Module Name:    vga_mouse - behavioral --
--------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.vga_mouse_pkg.all;


entity vga_mouse is
    port (
        sclk        : in  std_logic;    -- system clk (100 MHz)
        rst         : in  std_logic;    -- global reset
        resolution  : in  std_logic;    -- switch to control 640x480 and 800x600 resolutions
        pos_sw      : in  std_logic;    -- switch to control data on SSEG display
        bgsw        : in  std_logic_vector(2 downto 0);

        ps2_clk     : inout std_logic;  -- PS/2 clk line for mouse
        ps2_data    : inout std_logic;  -- PS/2 data line for mouse

        left        : out std_logic;    -- mouse left button
        middle      : out std_logic;    -- mouse middle button 
        right       : out std_logic;    -- mouse right button 
        busyev      : out std_logic;    -- indicate activity (busy or new_event)
        zposled     : out std_logic;    -- indicate activity (zpos if applicable)

        anodes      : out std_logic_vector(3 downto 0); -- displays
        cathodes    : out std_logic_vector(6 downto 0); -- segments

        -- hs, hcount, vs, vcount and blank are muxed by the resolution switch
        -- and are the outputs of the corresponding resolution submodule
        -- that are fed to the mouse display module and output to VGA 
        hsync       : out std_logic;    -- horizontal sync pulse to VGA
        vsync       : out std_logic;    -- vertical sync pulse to VGA
        vga_red     : out std_logic_vector(2 downto 0); -- red to VGA
        vga_green   : out std_logic_vector(2 downto 0); -- green to VGA
        vga_blue    : out std_logic_vector(2 downto 1)  -- blue to VGA
    );
end vga_mouse;

architecture behavioral of vga_mouse is
    constant tc1khz   : integer := 15;    -- Time constant for 1 KHz clock
    signal clk1khz    : std_logic := '0'; -- 1 KHz clock
    signal clk_25mhz  : std_logic;  -- for 640x480 resolution from dividing system clk
    signal clk_40mhz  : std_logic;  -- for 800x600 resolution from DCM
    signal clk        : std_logic;  -- system clk output from DCM
    signal cnt        : std_logic_vector(1 downto 0) := "00";   -- counter to divide system clk

    signal switch     : std_logic := '0';  -- high for one clk period when resolution changes
    signal lastres    : std_logic;  -- value of switch last clock edge
    signal new_event  : std_logic;  -- high for one clk period after a packet from mouse is processed
    signal busy       : std_logic;  -- indicates ps/2 activity
    signal xpos       : std_logic_vector(9 downto 0);   -- output xpos from mouse ref to vga decoder
    signal ypos       : std_logic_vector(9 downto 0);   -- output ypos from mouse ref to vga decoder
    signal zpos       : std_logic_vector(3 downto 0);   -- z-wheel data (if applicable)
    signal click      : std_logic;
    signal l, m, r    : std_logic;

    signal dispos       : std_logic_vector(9 downto 0);     -- either the X or Y pos data of the mouse
    signal dsel         : std_logic_vector(1 downto 0);     -- used to cycle through SSEG displays
    signal sg0, sg1, sg2 : std_logic_vector(6 downto 0) := "0000000";   -- mouse x/y diff segments

    signal pos_segs     : std_logic_vector(6 downto 0);                 -- position indicator
    constant xpos_segs  : std_logic_vector(6 downto 0) := "0001001";    -- 'X'
    constant ypos_segs  : std_logic_vector(6 downto 0) := "0011001";    -- 'Y'

    -- Convert 2 or 4 bit data to hex for SSEG display
    function hex_segs (binvec : std_logic_vector) return std_logic_vector is
        variable decvec : std_logic_vector(3 downto 0) := "0000";
        variable segments : std_logic_vector(6 downto 0);
    begin
        if (binvec'length = 2) then
            decvec(1 downto 0) := binvec;
        else
            decvec := binvec;
        end if;

        case decvec is
            when "0000" => segments := "1000000"; -- 0
            when "0001" => segments := "1111001"; -- 1
            when "0010" => segments := "0100100"; -- 2
            when "0011" => segments := "0110000"; -- 3
            when "0100" => segments := "0011001"; -- 4
            when "0101" => segments := "0010010"; -- 5
            when "0110" => segments := "0000010"; -- 6
            when "0111" => segments := "1111000"; -- 7
            when "1000" => segments := "0000000"; -- 8
            when "1001" => segments := "0010000"; -- 9
            when "1010" => segments := "0001000"; -- A
            when "1011" => segments := "0000011"; -- b
            when "1100" => segments := "1000110"; -- C
            when "1101" => segments := "0100001"; -- d
            when "1110" => segments := "0000110"; -- E
            when "1111" => segments := "0001110"; -- F
            when others => segments := "1111111"; -- OFF
        end case;
        return segments;
    end hex_segs;

begin

    -- 40 MHz clcok from DCM for 800x600 resolution
    c40MHz: dcm_40mhz 
        port map (
            clkin_in => sclk,
            clkdv_out => clk_40mhz,
            clk0_out => clk
        );

    -- Decode mouse data to vga signals
    vga: vgacomp
        port map (
            clk => clk,
            clk_25 => clk_25mhz,
            clk_40 => clk_40mhz,
            rst => rst,
            resolution => resolution,
            click => click,
            bgsw => bgsw,
            xpos => xpos,
            ypos => ypos,
            hsync => hsync,
            vsync => vsync,
            red => vga_red,
            green => vga_green,
            blue => vga_blue
        );

    -- Interface and controller for PS2 mouse
    mouse: mousecomp 
        port map (
            clk => clk,
            resolution => resolution,
            rst => rst,
            switch => switch,
            left => l,
            middle => m,
            new_event => new_event,
            right => r,
            busy => busy,
            xpos => xpos,
            ypos => ypos,
            zpos => zpos,
            ps2_clk => ps2_clk,
            ps2_data => ps2_data
        );

    -- 1 KHz clock for SSEG display
    cdiv1k: cdiv 
        port map (
            clk => clk,
            tcvl => tc1khz,
            cout => clk1khz
        );

    -- Output activity to LEDs for monitoring
    busyev <= busy or new_event;
    zposled <= zpos(3) or zpos(2) or zpos(1) or zpos(0);

    -- Set click signal excitation for the mouse displayer
    click <= l or m or r;

    -- Output mouse clicks to LEDs
    left <= l;
    middle <= m;
    right <= r;

    -- 25 MHz clock (divide system clock by 4)
    process(clk, cnt)
    begin
        if rising_edge(clk) then
            if cnt = "00" then
                clk_25mhz <= '1';
            else
                clk_25mhz <= '0';
            end if;
            cnt <= cnt + '1';
        end if;
    end process;

    -- Generate switch pulse if resolution is changed
    process(clk, resolution)
    begin
        if rising_edge(clk) then
            if resolution /= lastres then
                switch <= '1';
            else
                switch <= '0';
            end if;
            lastres <= resolution;
        end if;
    end process;


    -- Display mouse position on SSEG display
    process(pos_sw, xpos, ypos)
    begin
        case pos_sw is
            when '0'    => dispos <= xpos; pos_segs <= xpos_segs;
            when others => dispos <= ypos; pos_segs <= ypos_segs;
        end case;
    end process;

    process(dispos)
    begin
        sg0 <= hex_segs(dispos(3 downto 0));
        sg1 <= hex_segs(dispos(7 downto 4));
        sg2 <= hex_segs(dispos(9 downto 8));
    end process;

    process(clk1khz)
    begin
        if rising_edge(clk1khz) then
            case dsel is
                when "00"   => anodes <= "1110"; cathodes <= sg0;
                when "01"   => anodes <= "1101"; cathodes <= sg1;
                when "10"   => anodes <= "1011"; cathodes <= sg2;
                when others => anodes <= "0111"; cathodes <= pos_segs;
            end case;
            dsel <= dsel + 1;
        end if;
    end process;


end behavioral;


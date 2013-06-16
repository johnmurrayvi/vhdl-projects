--------------------------------------------
-- Module Name:    hw6_mouse - behavioral --
--------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.mouse_ref_pkg.all;

entity hw6_mouse is
    port (
        clk         : in  std_logic;    -- system clk (100 MHz)
        grst        : in  std_logic;    -- global reset
        res_sw      : in  std_logic;    -- switch to control 640x480 and 800x600 resolutions
        pos_sw      : in  std_logic;    -- pos switches
        ps2_clk     : inout std_logic;  -- PS/2 clk line for mouse
        ps2_data    : inout std_logic;  -- PS/2 data line for mouse
        left        : out std_logic;    -- mouse left button
        middle      : out std_logic;    -- mouse middle button 
        right       : out std_logic;    -- mouse right button 
        busyev      : out std_logic;    -- busy and new_event led
        zpos        : out std_logic_vector(3 downto 0); -- zpos activity (if applicable)
        anodes      : out std_logic_vector(3 downto 0);
        cathodes    : out std_logic_vector(6 downto 0)
    );
end hw6_mouse;

architecture behavioral of hw6_mouse is

    -- 1 KHz clock for sseg display
    constant tc1khz     : integer := 15;
    signal clk1khz      : std_logic := '0';

    signal rst          : std_logic := '0'; -- debounced global reset
    signal Q1, Q2, Q3   : std_logic;        -- debounce internal signals

    signal switch       : std_logic := '0'; -- high for one clk period when resolution changes
    signal lastres      : std_logic;  -- value of switch last clock edge
    signal new_event    : std_logic;  -- high for one clk period after a packet is processed
    signal busy         : std_logic;  -- indicates activity on ps/2 line
    signal xpos         : std_logic_vector(9 downto 0);   -- raw xpos output from mouserefcomp
    signal ypos         : std_logic_vector(9 downto 0);   -- raw ypos output from mouserefcomp

    signal dispos       : std_logic_vector(9 downto 0);
    signal dsel         : std_logic_vector(1 downto 0);
    signal sg0,sg1,sg2  : std_logic_vector(6 downto 0) := "0000000";    -- encoded x/ypos output
    signal pos_segs     : std_logic_vector(6 downto 0);     -- 'X' or 'Y' depending on pos_sw
    constant xpos_segs  : std_logic_vector(6 downto 0) := "0001001";    -- 'X'
    constant ypos_segs  : std_logic_vector(6 downto 0) := "0011001";    -- 'Y'

    -- function to encode the pos output from mouserefcomp to sseg format
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
            when others => segments := "0001110"; -- F
        end case;
        return segments;
    end hex_segs;

begin

    Inst_MouseRefComp: MouseRefComp 
        port map (
            clk => clk,
            resolution => res_sw,
            rst => rst,
            switch => switch,
            left => left,
            middle => middle,
            new_event => new_event,
            right => right,
            busy => busy,
            xpos => xpos,
            ypos => ypos,
            zpos => zpos,
            ps2_clk => ps2_clk,
            ps2_data => ps2_data
        );

	Inst_cdiv: cdiv 
        port map (
            cin => clk,
            tcvl => tc1khz,
            cout => clk1khz
        );

    -- Monitor ps/2 activity with led
    busyev <= busy or new_event;

    -- One shot debounce
    process(clk1khz)
    begin
        if rising_edge(clk1khz) then
            Q1 <= grst;
            Q2 <= Q1;
            Q3 <= Q2;
        end if;
    end process;
    rst <= Q1 and Q2 and (not Q3);

    -- "Switch" signal for mouserefcomp
    process(clk, res_sw)
    begin
        if rising_edge(clk) then
            if res_sw /= lastres then
                switch <= '1';
            else
                switch <= '0';
            end if;
            lastres <= res_sw;
        end if;
    end process;

    -- Select between xpos and ypos to display on sseg
    process(pos_sw, xpos, ypos)
    begin
        case pos_sw is
            when '0'    => dispos <= xpos; pos_segs <= xpos_segs;
            when others => dispos <= ypos; pos_segs <= ypos_segs;
        end case;
    end process;

    -- Encode positional output from mouserefcomp
    process(dispos)
    begin
        sg0 <= hex_segs(dispos(3 downto 0));
        sg1 <= hex_segs(dispos(7 downto 4));
        sg2 <= hex_segs(dispos(9 downto 8));
    end process;

    -- Display the encoded output on the seven segment display
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

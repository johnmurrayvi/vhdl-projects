------------------------------------------
-- Module Name:    vgacomp - behavioral --
------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
library unisim;
use unisim.vcomponents.ALL;
use work.vga_mouse_pkg.all;


entity vgacomp is
    port (
        clk         : in  std_logic;
        clk_25      : in  std_logic;
        clk_40      : in  std_logic;
        rst         : in  std_logic;
        resolution  : in  std_logic;
        click       : in  std_logic;
        bgsw        : in  std_logic_vector(2 downto 0);
        xpos        : in  std_logic_vector(9 downto 0);
        ypos        : in  std_logic_vector(9 downto 0);
        hsync       : out std_logic;
        vsync       : out std_logic;
        red         : out std_logic_vector(2 downto 0);
        green       : out std_logic_vector(2 downto 0);
        blue        : out std_logic_vector(2 downto 1)
    );
end vgacomp;


architecture behavioral of vgacomp is
    signal bitBlank800_60   : std_logic;
    signal bitHS_800_60     : std_logic;
    signal bitHS_640_60     : std_logic;
    signal bitVS_640_60     : std_logic;
    signal bitBlank640_60   : std_logic;
    signal bitVS_800_60     : std_logic;
    signal vecHcount_640_60 : std_logic_vector(10 downto 0);
    signal vecVcount_640_60 : std_logic_vector(10 downto 0);
    signal vecHcount_800_60 : std_logic_vector(10 downto 0);
    signal vecVcount_800_60 : std_logic_vector(10 downto 0);

    signal red_in         : std_logic_vector(2 downto 0) := "000";
    signal green_in       : std_logic_vector(2 downto 0) := "000";
    signal blue_in        : std_logic_vector(2 downto 1) := "00";

    signal red_25           : std_logic_vector(2 downto 0) := "000";
    signal green_25         : std_logic_vector(2 downto 0) := "000";
    signal blue_25          : std_logic_vector(2 downto 1) := "00";

    signal red_40           : std_logic_vector(2 downto 0) := "000";
    signal green_40         : std_logic_vector(2 downto 0) := "000";
    signal blue_40          : std_logic_vector(2 downto 1) := "00";


begin

    process(bgsw)
    begin
        case bgsw is
            when "000" => 
                red_in <= "000";
                green_in <= "000";
                blue_in <= "00";
            when "001" =>
                red_in <= "000";
                green_in <= "000";
                blue_in <= "01";
            when "010" =>
                red_in <= "000";
                green_in <= "001";
                blue_in <= "00";
            when "011" =>
                red_in <= "000";
                green_in <= "001";
                blue_in <= "01";
            when "100" =>
                red_in <= "001";
                green_in <= "000";
                blue_in <= "00";
            when "101" =>
                red_in <= "001";
                green_in <= "000";
                blue_in <= "01";
            when "110" =>
                red_in <= "001";
                green_in <= "001";
                blue_in <= "00";
            when others =>
                red_in <= "001";
                green_in <= "001";
                blue_in <= "01";
        end case;
    end process;


    res_sel: vga_res_sel
        port map (
            resolution => resolution,
            HS_640_60 => bitHS_640_60,
            HS_800_60 => bitHS_800_60,
            VS_640_60 => bitVS_640_60,
            VS_800_60 => bitVS_800_60,
            red_25 => red_25,
            green_25 => green_25,
            blue_25 => blue_25,
            red_40 => red_40,
            green_40 => green_40,
            blue_40 => blue_40,
            hs => hsync,
            vs => vsync,
            red => red,
            green => green,
            blue => blue
        );

    -- 640 x 480 @ 60 Hz

    VgaCtrl640_60 : vga_controller_640_60
        port map (
            pixel_clk => clk_25,
            rst => rst,
            blank => bitBlank640_60,
            hcount(10 downto 0) => vecHcount_640_60(10 downto 0),
            HS => bitHS_640_60,
            vcount(10 downto 0) => vecVcount_640_60(10 downto 0),
            VS => bitVS_640_60
        );

    Inst_mouse_disp_25mhz: mouse_displayer
        port map (
            clk => clk,
            pixel_clk => clk_25,
            xpos => xpos,
            ypos => ypos,
            hcount => vecHcount_640_60,
            vcount => vecVcount_640_60,
            blank => bitBlank640_60,
            click => click,
            red_in => red_in,
            green_in => green_in,
            blue_in => blue_in,
            red_out => red_25,
            green_out => green_25,
            blue_out => blue_25
        );

    -- 800 x 600 @ 60 Hz

    VgaCtrl800_60 : vga_controller_800_60
        port map (
            pixel_clk => clk_40,
            rst => rst,
            blank => bitBlank800_60,
            hcount(10 downto 0) => vecHcount_800_60(10 downto 0),
            HS => bitHS_800_60,
            vcount(10 downto 0) => vecVcount_800_60(10 downto 0),
            VS => bitVS_800_60
        );

    Inst_mouse_disp_40mhz: mouse_displayer
        port map (
            clk => clk,
            pixel_clk => clk_40,
            xpos => xpos,
            ypos => ypos,
            hcount => vecHcount_800_60,
            vcount => vecVcount_800_60,
            blank => bitBlank800_60,
            click => click,
            red_in => red_in,
            green_in => green_in,
            blue_in => blue_in,
            red_out => red_40,
            green_out => green_40,
            blue_out => blue_40
        );

end behavioral;

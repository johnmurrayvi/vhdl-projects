library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.vga_mouse_pkg.all;

entity vga_res_sel is
    port (
        resolution  : in std_logic;

        HS_640_60   : in std_logic;
        VS_640_60   : in std_logic;
        HS_800_60   : in std_logic;
        VS_800_60   : in std_logic;

        red_25      : in std_logic_vector(2 downto 0);
        green_25    : in std_logic_vector(2 downto 0);
        blue_25     : in std_logic_vector(2 downto 1);

        red_40      : in std_logic_vector(2 downto 0);
        green_40    : in std_logic_vector(2 downto 0);
        blue_40     : in std_logic_vector(2 downto 1);

        hs          : out std_logic;    -- Horizontal sync
        vs          : out std_logic;    -- Vertical sync

        red         : out std_logic_vector(2 downto 0);
        green       : out std_logic_vector(2 downto 0);
        blue        : out std_logic_vector(2 downto 1)
    );
end vga_res_sel;

architecture behavioral of vga_res_sel is

begin
    -- select horizontal synch pulse signal depending on the
    -- resolution used
    hs <= HS_800_60 when resolution = '1' else HS_640_60;

    -- select vertical synch pulse signal depending on the
    -- resolution used
    vs <= VS_800_60 when resolution = '1' else VS_640_60;

    red <= red_25 when resolution = '0' else red_40;
    green <= green_25 when resolution = '0' else green_40;
    blue <= blue_25 when resolution = '0' else blue_40;

end behavioral;

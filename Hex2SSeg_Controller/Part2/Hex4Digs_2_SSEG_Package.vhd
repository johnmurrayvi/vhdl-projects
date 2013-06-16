----------------------------------------------
-- Package Name:    Hex4Digs_2_SSEG_Package --
----------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

package Hex4Digs_2_SSEG_Package is

    -- 4 hex digits on SSeg displays
    component Hex4Digs_2_SSeg is
        port ( clock    : in   std_logic;   -- Input clock
               inclk    : in   std_logic;   -- Incr clock
               sw0      : in   std_logic;   -- Switch to control clock
               incr     : in   std_logic_vector (3 downto 0);   -- Buttons to increment digits
               anodes   : out  std_logic_vector (3 downto 0);   -- Anodes for display
               cathodes : out  std_logic_vector (7 downto 0));  -- Cathodes for segments
    end component;

    -- Use debounce pulses from buttons
    component HexBtns is
        port ( clk : in  std_logic;
               btns : in  std_logic_vector (3 downto 0);
               pulse : out  std_logic_vector (3 downto 0));
    end component;

    -- Hex to SSeg decoder
    component Hex2SSeg is
        port ( HexChar  : in  std_logic_vector (3 downto 0);
               Segments : out std_logic_vector (7 downto 0));
    end component;

    -- Clock Divider with TC input
    component CDiv is
        port ( Cin  : in  std_logic;
               TCvl : in  integer;
               Cout : out std_logic);
    end component;

end Hex4Digs_2_SSEG_Package;

-------------------------------------------
-- Package Name:    Hex4Dig2SSeg_Package --
-------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

package Hex4Dig2SSeg_Package is

    -- 4 hex digits on SSeg displays
    component Hex4Digs2SSeg is
        port ( 
            clock    : in   std_logic;   -- Input clock
--               sw0      : in   std_logic;   -- Switch to control clock
            incr     : in   std_logic_vector (3 downto 0);  -- Buttons to increment digits
            anodes   : out  std_logic_vector (3 downto 0);  -- Anodes for display
            cathodes : out  std_logic_vector (7 downto 0)   -- Cathodes for segments
        );
    end component;
    
--    component Anodes4DispCntrl is
--        port (
--            clock  : in   std_logic;  -- Clock
--            anodes : out  std_logic_vector (3 downto 0)    -- Anodes for display
--        );
--    end component;

    -- Use debounce pulses from buttons
    component Deb4Btns is
        port ( 
            clk : in  std_logic;
            btns : in  std_logic_vector (3 downto 0);
            pulses : out  std_logic_vector (3 downto 0)
       );
    end component;

    -- Control clock with switch, either 1KHz or 5Hz
    component ClockController is
        port ( 
            clock : in  std_logic;
            clk2Hz  : out std_logic;
            clk5Hz   : out std_logic;
            clk1KHz  : out std_logic
        );
    end component;

    -- Hex to SSeg decoder
    component HexD2SSeg is
        port ( 
            HexChar  : in  std_logic_vector (3 downto 0);
            Segments : out std_logic_vector (7 downto 0)
        );
    end component;

    -- Debounce circuitry
    component debounce is
        port ( 
            clk   : in  std_logic;
            key   : in  std_logic;
            pulse : out std_logic
        );
    end component;

    -- Clock Divider with TC input
    component cdiv is
        port ( 
            Cin  : in  std_logic;
            TCvl : in  integer;
            Cout : out std_logic
        );
    end component;

end Hex4Dig2SSeg_Package;

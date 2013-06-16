-------------------------------------------------
-- Module Name:    Hex4Dig2SSegCntrl - control --
-------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.Hex4Dig2SSeg_Package.all;

entity Hex4Dig2SSegCntrl is
    port ( 
        clock : in  std_logic;
        sw0   : in  std_logic;  -- Switch to control clock
        btns  : in  std_logic_vector (3 downto 0);
        anodes : out  std_logic_vector (3 downto 0);
        cathodes : out  std_logic_vector (7 downto 0)
    );
end Hex4Dig2SSegCntrl;

architecture control of Hex4Dig2SSegCntrl is
    signal pulses   : std_logic_vector (3 downto 0);
    signal clk      : std_logic := '0'; -- Current Clock
    signal clk2Hz   : std_logic := '0'; -- 2 Hz clock
    signal clk5Hz   : std_logic := '0'; -- 5 Hz clock
    signal clk1KHz  : std_logic := '0'; -- 1 KHz clock

begin

    -- Get divided clocks
    sclk: ClockController port map (clock, clk2Hz, clk5Hz, clk1KHz);

    Pls: Deb4Btns port map (clk, btns, pulses);
    HexDs: Hex4Digs2SSeg port map (clk, pulses, anodes, cathodes);

    -- use switch to select fast or slow clk
    process (sw0)
    begin
        case sw0 is
            when '0' =>
                clk <= clk1KHz;
            when others =>
                clk <= clk2Hz;
        end case;
    end process;

end control;

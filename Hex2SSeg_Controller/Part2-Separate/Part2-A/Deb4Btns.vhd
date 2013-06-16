------------------------------------------
-- module name:    Deb4Btns - btnpulses --
------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.Hex4Dig2SSeg_Package.all;

entity Deb4Btns is
    port (
        clk : in  std_logic;
        btns : in  std_logic_vector (3 downto 0);
        pulses : out  std_logic_vector (3 downto 0)
    );
end Deb4Btns;

architecture btnpulses of Deb4Btns is
    signal bp0, bp1, bp2, bp3 : std_logic := '0';   -- Button debounce pulses
begin

    -- Assign the debounce pulses to buttons
    bdb0: debounce port map (clk, btns(0), bp0);
    bdb1: debounce port map (clk, btns(1), bp1);
    bdb2: debounce port map (clk, btns(2), bp2);
    bdb3: debounce port map (clk, btns(3), bp3);

    pulses(0) <= '1' when bp0 = '1' else '0';
    pulses(1) <= '1' when bp1 = '1' else '0';
    pulses(2) <= '1' when bp2 = '1' else '0';
    pulses(3) <= '1' when bp3 = '1' else '0';

end btnpulses;

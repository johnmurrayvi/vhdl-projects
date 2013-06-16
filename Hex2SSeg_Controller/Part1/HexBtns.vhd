----------------------------------------
-- module name:    hexbtns - btnpulse --
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.Hex4Digs_2_SSeg_Package.all;

entity HexBtns is
    port ( clk : in  std_logic;
           btns : in  std_logic_vector (3 downto 0);
           pulse : out  std_logic_vector (3 downto 0));
end HexBtns;

architecture btnpulse of HexBtns is
    signal bp0, bp1, bp2, bp3 : std_logic := '0';   -- Button debounce pulses
begin

    -- Assign the debounce pulses to buttons
    bdb0: debounce port map (clk, btns(0), bp0);
    bdb1: debounce port map (clk, btns(1), bp1);
    bdb2: debounce port map (clk, btns(2), bp2);
    bdb3: debounce port map (clk, btns(3), bp3);

    process (clk)
    begin
        if rising_edge(clk) then
            if bp0 = '1' then pulse(0) <= '1';
                else pulse(0) <= '0'; end if;
            
            if bp1 = '1' then pulse(1) <= '1';
                else pulse(1) <= '0'; end if;
            
            if bp2 = '1' then pulse(2) <= '1';
                else pulse(2) <= '0'; end if;
            
            if bp3 = '1' then pulse(3) <= '1';
                else pulse(3) <= '0'; end if;
        end if;
    end process;

end btnpulse;

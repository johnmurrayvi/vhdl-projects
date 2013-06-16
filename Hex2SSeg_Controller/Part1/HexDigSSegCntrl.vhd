-----------------------------------------------
-- Module Name:    HexDigSSegCntrl - control --
-----------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.Hex4Digs_2_SSeg_Package.all;


entity HexDigSSegCntrl is
    port ( clock : in  std_logic;
           sw0 : in  std_logic;
           btns  : in  std_logic_vector (3 downto 0);
           anodes : out  std_logic_vector (3 downto 0);
           cathodes : out  std_logic_vector (7 downto 0));
end HexDigSSegCntrl;

architecture control of HexDigSSegCntrl is

begin
    
--    c5Hz: CDiv port map (clock, TC5Hz, clk5Hz);
----    c16Hz: CDiv port map (clock, TC16Hz, clk16Hz);
----    c20Hz: CDiv port map (clock, TC20Hz, clk20Hz);
----    c30Hz: CDiv port map (clock, TC30Hz, clk30Hz);
--    c3Hz: CDiv port map (clock, TC3Hz, clk3Hz);

    HexDs: Hex4Digs_2_SSeg port map (clock, sw0, btns, anodes, cathodes);

--    process (sw1, clk5Hz, clk16Hz)  -- control clocks
--    process (sw1, clk5Hz, clk20Hz)  -- control clocks
--    process (sw1, clk5Hz, clk30Hz)  -- control clocks
--    process (sw1, clk5Hz, clk3Hz)  -- control clocks
--    begin
--        if (sw1 = '0') then 
--            clk <= clk5Hz;
--        else
----            clk <= clk16Hz;
----            clk <= clk20Hz;
----            clk <= clk30Hz;
--            clk <= clk3Hz;
--        end if;
--    end process;

--    process (clk)
--    begin
--        if rising_edge(clk) then
--            en <= not en;
--        end if;
--    end process;
--
--    process (clk)
--    begin
--        if rising_edge(clk) then
--            if en = '1' then
--                c0 <= c0 + 1;
--                cntr(0) <= '1';
--                if (c0 = 15) then
--                    c1 <= c1 + 1;
--                    cntr(1) <= '1';
--                    if (c1 = 15) then
--                        c2 <= c2 + 1;
--                        cntr(2) <= '1';
--                        if (c2 = 15) then
--                            c3 <= c3 + 1;
--                            cntr(3) <= '1';
--                        end if;
--                    end if;
--                end if;
--            else
--                cntr <= "0000";
--            end if;
--        end if;
--    end process;

end control;

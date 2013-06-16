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
           anodes : out  std_logic_vector (3 downto 0);
           cathodes : out  std_logic_vector (7 downto 0));
end HexDigSSegCntrl;

architecture control of HexDigSSegCntrl is
    signal cntr : std_logic_vector (3 downto 0);
    signal clk  : std_logic := '0';     -- Current clock
    constant TC5Hz : integer := 56;    -- TC for 5 Hz clock
    signal clk5Hz  : std_logic := '0';     -- 5Hz clock
    signal c0, c1, c2, c3 : integer range 0 to 31;
    signal delay : std_logic := '0';
begin
    -- Get the current clock & 5 Hz clock
    sclk: ClockController port map (clock, sw0, clk);
    c5Hz: CDiv port map (clock, TC5Hz, clk5Hz);
    HexDs: Hex4Digs_2_SSeg port map (clk, sw0, cntr, anodes, cathodes);
    
    process (clk5Hz)
    begin
        if (clk5Hz'event and clk5Hz = '1') then
            if (delay = '1') then
                cntr <= "0000";
                delay <= '0';
            else 
                c0 <= c0 + 1;
                if (c0 mod 2 = 1) then
                    cntr(0) <= '1';
                    if (c0 = 31) then
                        c1 <= c1 + 1;
                    end if;
                elsif (c1 mod 2 = 1) then
                    cntr(1) <= '1';
                    if (c1 = 31) then
                        c2 <= c2 + 1;
                    end if;
                elsif (c2 mod 2 = 1) then
                    cntr(2) <= '1';
                    if (c2 = 31) then
                        c3 <= c3 + 1;
                    end if;
                elsif (c3 mod 2 = 1) then
                    cntr(3) <= '1';
                end if;
                delay <= '1';
            end if;
        end if;
    end process;
end control;

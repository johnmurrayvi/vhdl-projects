-----------------------------------------------
-- Module Name:    HexDigSSegCntrl - control --
-----------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.Hex4Digs_2_SSeg_Package.all;


entity HexDigSSegCntrl is
    port ( clock : in  std_logic;
           sws : in  std_logic_vector (2 downto 0);
           anodes : out  std_logic_vector (3 downto 0);
           cathodes : out  std_logic_vector (7 downto 0));
end HexDigSSegCntrl;

architecture control of HexDigSSegCntrl is
    signal cntr : std_logic_vector (3 downto 0);
    signal sw0  : std_logic;
    signal csws : std_logic_vector (1 downto 0);
    signal en   : std_logic;
    signal clk  : std_logic;
    constant TC5Hz  : integer := 56;    -- TC for 5 Hz clock
    constant TC16Hz : integer := 42;    -- TC for 16 Hz clock
    constant TC30Hz : integer := 36;    -- TC for 30 Hz clock
    constant TC312Hz : integer := 20;    -- TC for 312 Hz clock
    signal clk5Hz   : std_logic := '0';     -- 5Hz clock
    signal clk16Hz  : std_logic := '0';     -- 16Hz clock
    signal clk30Hz  : std_logic := '0';     -- 30Hz clock
    signal clk312Hz  : std_logic := '0';     -- 312Hz clock
    signal c0, c1, c2, c3 : integer range 0 to 15;
begin

    sw0 <= sws(0);
    csws(0) <= sws(1);
    csws(1) <= sws(2);

    c5Hz: CDiv port map (clock, TC5Hz, clk5Hz);
    c16Hz: CDiv port map (clock, TC16Hz, clk16Hz);
    c30Hz: CDiv port map (clock, TC30Hz, clk30Hz);
    c312Hz: CDiv port map (clock, TC312Hz, clk312Hz);

    HexDs: Hex4Digs_2_SSeg port map (clock, clk, sw0, cntr, anodes, cathodes);

    process (csws, clk5Hz, clk16Hz, clk30Hz, clk312Hz)  -- control clocks
    begin
        case csws is
            when "00" =>
                clk <= clk5Hz;
            when "01" =>
                clk <= clk16Hz;
            when "10" =>
                clk <= clk30Hz;
            when others =>
                clk <= clk312Hz;
        end case;
    end process;

    process (clk)
    begin
        if rising_edge(clk) then
            en <= not en;
        end if;
    end process;

    process (clk)
    begin
        if rising_edge(clk) then
            if en = '1' then
                c0 <= c0 + 1;
                cntr(0) <= '1';
                if (c0 = 15) then
                    c1 <= c1 + 1;
                    cntr(1) <= '1';
                    if (c1 = 15) then
                        c2 <= c2 + 1;
                        cntr(2) <= '1';
                        if (c2 = 15) then
                            c3 <= c3 + 1;
                            cntr(3) <= '1';
                        end if;
                    end if;
                end if;
            else
                cntr <= "0000";
            end if;
        end if;
    end process;

end control;

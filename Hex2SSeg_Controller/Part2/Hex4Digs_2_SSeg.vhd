--------------------------------------------------
-- Module Name:    Hex4Digs_2_SSeg - behavioral --
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.Hex4Digs_2_SSeg_Package.all;

entity Hex4Digs_2_SSeg is
    Port ( clock    : in   std_logic;   -- Input clock
           inclk    : in   std_logic;   -- Inc clock
           sw0      : in   std_logic;   -- Switch to control clock
           incr     : in   std_logic_vector (3 downto 0);   -- Increment digits
           anodes   : out  std_logic_vector (3 downto 0);   -- Anodes for display
           cathodes : out  std_logic_vector (7 downto 0));  -- Cathodes for segments
end Hex4Digs_2_SSeg;

architecture behavioral of Hex4Digs_2_SSeg is
    signal clk : std_logic;
    constant TC5Hz   : integer := 56;    -- TC for 5 Hz clock
    constant TC1KHz  : integer := 15;    -- TC for 1 KHz clock
    signal clk5Hz    : std_logic := '0';   -- 5 Hz clock
    signal clk1KHz   : std_logic := '0';  -- 1 KHz clock
    signal dsel      : std_logic_vector (1 downto 0) := "00";    -- Display select
    signal hx0, hx1, hx2, hx3 : std_logic_vector (3 downto 0) := "0000";    -- Hex digits
    signal sg0, sg1, sg2, sg3 : std_logic_vector (7 downto 0) := "11111111";    -- Segments
begin

    -- Get 1 KHz, 16 Hz, and 5 Hz clocks
    c5Hz: CDiv port map (clock, TC5Hz, clk5Hz);
    c1KHz: CDiv port map (clock, TC1KHz, clk1KHz);

    -- Get 4 Hex digits and assign their segments
    dig0: Hex2SSeg port map (hx0, sg0);
    dig1: Hex2SSeg port map (hx1, sg1);
    dig2: Hex2SSeg port map (hx2, sg2);
    dig3: Hex2SSeg port map (hx3, sg3);

    process (sw0, clk1KHz, clk5Hz)  -- control clocks
    begin
        if (sw0 = '0') then 
            clk <= clk1KHz;
        else
            clk <= clk5Hz;
        end if;
    end process;

    process (inclk)
    begin
        if rising_edge(inclk) then
            if (incr(0) = '1') then hx0 <= hx0 + 1; end if;
            if (incr(1) = '1') then hx1 <= hx1 + 1; end if;
            if (incr(2) = '1') then hx2 <= hx2 + 1; end if;
            if (incr(3) = '1') then hx3 <= hx3 + 1; end if;
        end if;
    end process;

--    cathodes <= sg0 when dsel = "00" else
--                sg1 when dsel = "01" else
--                sg2 when dsel = "10" else
--                sg3;

    process (clk)      -- choose output display with dsel
    begin
        if rising_edge(clk) then
            case dsel is
                when "00" =>
                    cathodes <= sg3;
                    anodes <= "0111";
                when "01" =>
                    cathodes <= sg2;
                    anodes <= "1011";
                when "10" =>
                    cathodes <= sg1;
                    anodes <= "1101";
                when others  =>
                    cathodes <= sg0;
                    anodes <= "1110";
            end case;
            dsel <= dsel + 1;
        end if;
    end process;

end behavioral;


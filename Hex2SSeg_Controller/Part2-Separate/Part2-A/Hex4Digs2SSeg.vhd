------------------------------------------------
-- Module Name:    Hex4Digs2SSeg - behavioral --
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.Hex4Dig2SSeg_Package.all;

entity Hex4Digs2SSeg is
    port ( 
        clock    : in   std_logic;   -- Input clock
        incr     : in   std_logic_vector (3 downto 0);   -- Increment digits
        anodes   : out  std_logic_vector (3 downto 0);   -- Anodes for display
        cathodes : out  std_logic_vector (7 downto 0)    -- Cathodes for segments
    );
end Hex4Digs2SSeg;

architecture behavioral of Hex4Digs2SSeg is
    signal dsel : std_logic_vector (1 downto 0) := "00";    -- Display select
    signal hx0, hx1, hx2, hx3 : std_logic_vector (3 downto 0) := "0000";      -- Hex digits
    signal sg0, sg1, sg2, sg3 : std_logic_vector (7 downto 0) := "11111111";  -- Segments
begin

    -- Get 4 Hex digits and assign their segments
    dig0: HexD2SSeg port map (hx0, sg0);
    dig1: HexD2SSeg port map (hx1, sg1);
    dig2: HexD2SSeg port map (hx2, sg2);
    dig3: HexD2SSeg port map (hx3, sg3);

    hx0 <= hx0 + 1 when incr(0) = '1' else hx0;
    hx1 <= hx1 + 1 when incr(1) = '1' else hx1;
    hx2 <= hx2 + 1 when incr(2) = '1' else hx2;
    hx3 <= hx3 + 1 when incr(3) = '1' else hx3;

    process (clock)      -- choose output display with dsel
    begin
        if (clock'event and clock = '1') then
            case dsel is
                when "00" =>
                    cathodes <= sg0;
                    anodes <= "0111";
                when "01" =>
                    cathodes <= sg1;
                    anodes <= "1011";
                when "10" =>
                    cathodes <= sg2;
                    anodes <= "1101";
                when others  =>
                    cathodes <= sg3;
                    anodes <= "1110";
            end case;
            dsel <= dsel - 1;
        end if;
    end process;

end behavioral;


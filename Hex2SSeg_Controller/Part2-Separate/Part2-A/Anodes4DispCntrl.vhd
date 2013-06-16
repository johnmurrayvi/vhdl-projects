------------------------------------------------
-- Module Name:    Anodes4DispCntrl - control --
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Anodes4DispCntrl is
    port (
        clock  : in   std_logic;  -- Clock
        anodes : out  std_logic_vector (3 downto 0)    -- Anodes for display
    );
end Anodes4DispCntrl;

architecture control of Anodes4DispCntrl is
    signal dsel : std_logic_vector (1 downto 0) := "00";    -- Display select
begin

    process (clock)      -- choose output display with dsel
    begin
        if (clock'event and clock = '1') then
            case dsel is
                when "00" =>
                    anodes <= "0111";
                when "01" =>
                    anodes <= "1011";
                when "10" =>
                    anodes <= "1101";
                when others  =>
                    anodes <= "1110";
            end case;
            dsel <= dsel - 1;
        end if;
    end process;

end control;
----------------
-- John Murray
-- ECE351
-- Hamming Encoder/Decoder with LEDs
----------------

library ieee;
use ieee.std_logic_1164.all;

entity HammingCodeLEDs is
    port (
        enc    : in    std_logic;  -- Encode switch [SW0]
        data   : in    std_logic_vector(7 downto 1); -- Data bits [SW(7:1)]
        pout   : out   std_logic_vector(3 downto 1)  -- Parity bits [LD(2:0)]
    );
end HammingCodeLEDs;

architecture behavioral of HammingCodeLEDs is
    signal parity :     std_logic_vector(3 downto 1);
begin

    process(enc)
    begin
        if (enc = '1') then
            -- encode: compute and display parity bits
            parity(1) <= data(3) xor data(5) xor data(7);
            parity(2) <= data(3) xor data(6) xor data(7);
            parity(3) <= data(5) xor data(6) xor data(7);
        else
            -- decode: compute and display error syndrome
            parity(1) <= data(1) xor data(3) xor data(5) xor data(7);
            parity(2) <= data(2) xor data(3) xor data(6) xor data(7);
            parity(3) <= data(4) xor data(5) xor data(6) xor data(7);
        end if;

        pout <= parity; -- Output parity bits to LEDs
    end process;

end behavioral;


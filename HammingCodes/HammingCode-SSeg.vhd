--------------------------------------------------
-- John Murray
-- ECE351
-- Hamming Encoder/Decoder with 7-Segment Display
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity HammingCodeSSEG is
    port (
        enc     : in    std_logic;  -- Encoder Switch
        clk     : in    std_logic;  -- Clock
        data    : in    std_logic_vector(7 downto 1);   -- Data bits
        anodes  : out   std_logic_vector(3 downto 0);   -- Seven Segment Anodes
        segments: out   std_logic_vector(7 downto 0)    -- Seven Segment Cathodes
    );
end HammingCodeSSEG;

architecture behavioral of HammingCodeSSEG is
    signal parity :     std_logic_vector(2 downto 0);   -- Parity Computation Bits
    signal sseg   :     std_logic_vector(7 downto 0);   -- Seven Segment Cathodes
begin

	process(clk)
	begin
		if rising_edge(clk) then
            if (enc = '1') then
                -- encode: compute and display 'E' on Seven Segment Display
                parity(0) <= data(3) xor data(5) xor data(7);
                parity(1) <= data(3) xor data(6) xor data(7);
                parity(2) <= data(5) xor data(6) xor data(7);

                sseg <= "10000110";   -- E
            else
                -- decode: compute and display error syndrome on Seven Segment Display
                parity(0) <= data(1) xor data(3) xor data(5) xor data(7);
                parity(1) <= data(2) xor data(3) xor data(6) xor data(7);
                parity(2) <= data(4) xor data(5) xor data(6) xor data(7);

                case parity is  -- Select correct display pattern based on parity bits
                    when "000" =>
                        sseg <= "11000000";    -- 0
                    when "001" => 
                        sseg <= "11111001";    -- 1
                    when "010" =>
                        sseg <= "10100100";    -- 2
                    when "011" => 
                        sseg <= "10110000";    -- 3
                    when "100" =>
                        sseg <= "10011001";    -- 4
                    when "101" =>
                        sseg <= "10010010";    -- 5
                    when "110" =>
                        sseg <= "10000010";    -- 6
                    when "111" =>
                        sseg <= "11111000";    -- 7
                    when others =>
                        sseg <= "10000000";    -- Error
                end case;
            end if;
            segments <= sseg;   -- Drive segments
            anodes <= "0111";   -- Turn off all seven segment displays except for one
        end if;
    end process;

end behavioral;


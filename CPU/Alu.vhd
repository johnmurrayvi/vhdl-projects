library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use work.cpu_lib.all;

entity alu is
  port( a, b : in bit16;
        sel : in t_alu;
        c : out bit16);
end alu;

architecture rtl of alu is
begin
  aluproc: process(a, b, sel)
  begin
  case sel is
    when alupass =>
      c <= a after 1 ns;

    when andOp =>
      c <= a and b after 1 ns;

    when orOp =>
      c <= a or b after 1 ns;

    when xorOp =>
      c <= a xor b after 1 ns;

    when notOp =>
      c <= not a after 1 ns;

    when plus => 
      c <= a + b after 1 ns;

    when alusub =>
      c <= a - b after 1 ns;

    when inc =>
      c <= a +  "0000000000000001" after 1 ns;

    when dec =>
      c <= a - "0000000000000001" after 1 ns;

    when zero =>
      c <= "0000000000000000" after 1 ns;

    when others =>
      c <= "0000000000000000" after 1 ns;

  end case;
  end process;

end rtl;

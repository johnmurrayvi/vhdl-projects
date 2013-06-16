library IEEE;
use IEEE.std_logic_1164.all;
use work.cpu_lib.all;

entity trireg is
  port( a : in bit16;
        en : in std_logic;
        clk : in std_logic;
        q : out bit16);
end trireg;

architecture rtl of trireg is 
  signal val : bit16;
begin
  triregdata: process
  begin
    wait until clk'event and clk = '1';
    val <= a;
  end process;

  trireg3st: process(en, val)
  begin
    if en = '1' then
      q <= val after 1 ns;
    elsif en = '0' then 
      q <= "ZZZZZZZZZZZZZZZZ" after 1 ns;
-- exemplar_translate_off
    else
      q <= "XXXXXXXXXXXXXXXX" after 1 ns;
-- exemplar_translate_on
    end if;
  end process;
end rtl;


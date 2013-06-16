library IEEE;
use IEEE.std_logic_1164.all;
use work.cpu_lib.all;

entity shift is
  port ( a : in bit16;
         sel : in t_shift;
         y : out bit16);
end shift;

architecture rtl of shift is
begin
  shftproc: process(a, sel)
  begin
    case sel is
      when shftpass =>
        y <= a after 1 ns;

      when shl =>
        y <= a(14 downto 0) & '0' after 1 ns;

      when shr =>
        y <= '0' & a(15 downto 1) after 1 ns;

      when rotl =>
        y <= a(14 downto 0) & a(15) after 1 ns;

      when rotr =>
        y <= a(0) & a(15 downto 1) after 1 ns;

    end case;
  end process;
end rtl;


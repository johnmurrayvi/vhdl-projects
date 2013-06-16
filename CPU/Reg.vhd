library IEEE;
use IEEE.std_logic_1164.all;
use work.cpu_lib.all;

entity reg is
  port( a : in bit16;
        clk : in std_logic;
        q : out bit16);
end reg;

architecture rtl of reg is 
begin
  regproc: process
  begin
    wait until clk'event and clk = '1';
    q <= a after 1 ns;
  end process;
end rtl;


library IEEE;
use IEEE.std_logic_1164.all;
use work.cpu_lib.all;
-- use work.cpu_math.all;

entity top is
end top;

architecture behave of top is
  component mem
    port (addr : in bit16;
          sel, rw : in std_logic;
          ready : out std_logic;
          data : inout bit16);
  end component;
  component cpu
    port(clock, reset, ready : in std_logic;
         addr : out bit16;
         rw, vma : out std_logic;
         data : inout bit16);
  end component;
  signal addr, data : bit16;
  signal vma, rw, ready : std_logic;
  signal clock, reset : std_logic := '0';
begin

  clock <= not clock after 50 ns;
  reset <= '1', '0' after 100 ns;

  m1 : mem port map (addr, vma, rw, ready, data);
  u1 : cpu port map(clock, reset, ready, addr, rw, vma, data);
end behave;


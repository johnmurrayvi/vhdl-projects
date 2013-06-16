library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use work.cpu_lib.all;

entity regarray is
  port( data : in bit16;
        sel : in t_reg;
        en : in std_logic;
        clk : in std_logic;
        q : out bit16);
end regarray;

architecture rtl of regarray is 
  type t_ram is array (0 to 7) of bit16;
  signal temp_data : bit16;
begin
  process(clk,sel)
    variable ramdata : t_ram;
  begin
    if clk'event and clk = '1' then
      ramdata(conv_integer(sel)) := data;
    end if;
    temp_data <= ramdata(conv_integer(sel)) after 1 ns;
  end process;

  process(en, temp_data) 
  begin
    if en = '1' then 
      q <= temp_data after 1 ns;
    else
      q <= "ZZZZZZZZZZZZZZZZ" after 1 ns;
    end if;
  end process;


end rtl;


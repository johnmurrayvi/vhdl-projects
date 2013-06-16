library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use work.cpu_lib.all;
--use work.cpu_math.all;

entity mem is
  port (addr : in bit16;
        sel, rw : in std_logic;
        ready : out std_logic;
        data : inout bit16);
end mem;

architecture behave of mem is
begin
  memproc: process(addr, sel, rw)
    type t_mem is array(0 to 63) of bit16;
    variable mem_data : t_mem := 
     ("0010000000000001",  --- 0  loadI 1, #   -- load source address
      "0000000000010000",  --- 1  10
      "0010000000000010",  --- 2  loadI 2, #   -- load destination address
      "0000000000110000",  --- 3  30
      "0010000000000110",  --- 4  loadI 6, #   -- load data end address
      "0000000000111111",  --- 5  3F
      "0000100000001011",  --- 6  load 1, 3    -- load reg3 with source element
      "0001000000011010",  --- 7  store 3, 2   -- store reg3 at destination
      "0011000000001110",  --- 8  bgtI 1, 6, # -- compare to see if at end of data
      "0000000000000000",  --- 9  00           -- if so just start over
      "0011100000000001",  --- A  inc 1        -- move source address to next
      "0011100000000010",  --- B  inc 2        -- move destination address to next
      "0010100000001111",  --- C  braI #       -- go to the next element to copy
      "0000000000000110",  --- D  06       
      "0000000000000000",  --- E  
      "0000000000000000",  --- F  
      "0000000000000001",  --- 10       --- Start of source array
      "0000000000000010",  --- 11 
      "0000000000000011",  --- 12 
      "0000000000000100",  --- 13 
      "0000000000000101",  --- 14 
      "0000000000000110",  --- 15 
      "0000000000000111",  --- 16 
      "0000000000001000",  --- 17 
      "0000000000001001",  --- 18 
      "0000000000001010",  --- 19 
      "0000000000001011",  --- 1A 
      "0000000000001100",  --- 1B 
      "0000000000001101",  --- 1C 
      "0000000000001110",  --- 1D 
      "0000000000001111",  --- 1E 
      "0000000000010000",  --- 1F
      "0000000000000000",  --- 20       
      "0000000000000000",  --- 21
      "0000000000000000",  --- 22
      "0000000000000000",  --- 23
      "0000000000000000",  --- 24
      "0000000000000000",  --- 25
      "0000000000000000",  --- 26
      "0000000000000000",  --- 27
      "0000000000000000",  --- 28
      "0000000000000000",  --- 29
      "0000000000000000",  --- 2A
      "0000000000000000",  --- 2B
      "0000000000000000",  --- 2C
      "0000000000000000",  --- 2D
      "0000000000000000",  --- 2E
      "0000000000000000",  --- 2F
      "0000000000000000",  --- 30    -- start of destination array
      "0000000000000000",  --- 31
      "0000000000000000",  --- 32
      "0000000000000000",  --- 33
      "0000000000000000",  --- 34
      "0000000000000000",  --- 35
      "0000000000000000",  --- 36
      "0000000000000000",  --- 37
      "0000000000000000",  --- 38
      "0000000000000000",  --- 39
      "0000000000000000",  --- 3A
      "0000000000000000",  --- 3B
      "0000000000000000",  --- 3C
      "0000000000000000",  --- 3D
      "0000000000000000",  --- 3E
      "0000000000000000"); --- 3F

  begin
    data <= "ZZZZZZZZZZZZZZZZ";
    ready <= '0';

    if sel = '1' then 
      if rw = '0' then
        data <= mem_data(CONV_INTEGER(addr(15 downto 0))) after 1 ns;
        ready <= '1';
      elsif rw = '1' then 
        mem_data(CONV_INTEGER(addr(15 downto 0))) := data;
      end if;
    else
      data <= "ZZZZZZZZZZZZZZZZ" after 1 ns;
    end if;
  end process;

end behave;


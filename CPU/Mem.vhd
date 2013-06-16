library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use work.cpu_lib.all;

entity mem is
  port (addr : in bit16;
        sel, rw : in std_logic;
        ready : out std_logic;
        data : inout bit16);
end mem;

architecture behave of mem is
begin
  memproc: process(addr, sel, rw)
    type t_mem is array(0 to 34) of bit16;
    variable mem_data : t_mem := 
     ("0010000000000001",  --- 0  loadI 1, #   -- load first element address
      "0000000000010110",  --- 1  22
      "0010000000000010",  --- 2  loadI 2, #   -- load second element address
      "0000000000010111",  --- 3  23
      "0010000000000000",  --- 4  loadI 6, #   -- reg 6 to 0 keeps track of changes
      "0000000000000000",  --- 5  00
      "0010000000000000",  --- 6  loadI 7, #   -- load reg7 with end location
      "0000000000101010",  --- 7  42
      "0000100000001011",  --- 8  load 1, 3    -- load reg 3 with first element
      "0000100000010100",  --- 9  load 2, 4    -- load reg 4 with second element
      "0011000000011100",  --- 10 bgtI 3, 4, # -- compare reg 3&4 goto 12 if a 
      "0000000000001100",  --- 11 12               switch is needed
      "0100000000001111",  --- 12 bgteI 1, 7,# -- If at end go back to 0
      "0000000000000000",  --- 13 0       
      "0011100000000001",  --- 14 inc 1         -- otherwise inc first element addr
      "0011100000000010",  --- 15 inc 2         -- inc second element addr
      "0010100000000000",  --- 16 braI #        -- go back to instr 6
      "0000000000000110",  --- 17 06
      "0001100000011101",  --- 18 move 3, 5     -- move reg3 to temp location
      "0001100000100011",  --- 19 move 4, 3     -- move reg4 to reg3
      "0001100000101100",  --- 20 move 5, 4     -- move temp to reg4
      "0001000000011001",  --- 21 store 3, 1    -- put reg3 value in memory
      "0001000000100010",  --- 22 store 4, 2    -- put reg4 value in memory
      "0100000000001111",  --- 23 bgte 1, 7, #  -- if at end go back to 0
      "0000000000000000",  --- 24 0
      "0011100000000001",  --- 25 inc 1         -- inc first element addr
      "0011100000000010",  --- 26 inc 2         -- inc second element addr
      "0000000000000000",  --- 27 loadI 6, #    -- set re6 to indicate changes
      "0000000000000001",  --- 28 01               were made
      "0010100000000000",  --- 29 braI #        -- go back to 6 and start over
      "0000000000000110",  --- 30 06
      "0000000000000000",  --- 31
      "0000000011000000",  --- 32              -- start of memory array
      "0000000000011000",  --- 33
      "0000000001000001",  --- 34
      "0000000011100000",  --- 35
      "0000000011111000",  --- 36
      "0000000000000001",  --- 36
      "0000000000000011",  --- 37
      "0000000001100001",  --- 38
      "0000000000001100",  --- 39
      "0000000000000110",  --- 40
      "0000000000000010",  --- 41
      "0000000000000000",  --- 42
      "0000000011111111"); --- 43

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


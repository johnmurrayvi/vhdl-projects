-----------------------------------
-- Module Name:    cdiv - divide --
-----------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity cdiv is
    port(
        clk  : in  std_logic;
        tcvl : in  integer;
        cout : out std_logic
    );
end cdiv;

-- Important values (for 50 MHz CLK):
-- 1 Hz                 -> tc = 84
-- 2 Hz                 -> tc = 71
-- 5 Hz                 -> tc = 56
-- 8 Hz                 -> tc = 50
-- 16 Hz                -> tc = 42
-- 1 KHz (~987.6 Hz)    -> tc = 15
-- 5 KHz                -> tc = 10

architecture divide of cdiv is
    signal tc: integer; -- Time Constant
    signal c0,c1,c2,c3: integer range 0 to 1000;
    signal d: std_logic := '0';
begin

    tc <= tcvl;

    process(clk, d)
    begin
        if rising_edge(clk) then        
            c0 <= c0 + 1;
            if c0 = tc then
                c0 <= 0;
                c1 <= c1 + 1;
            elsif c1 = tc then
                c1 <= 0;
                c2 <= c2 + 1;
            elsif c2 = tc then
                c2 <= 0;
                c3 <= c3 + 1;
            elsif c3 = tc then
                c3 <= 0;
                d <= NOT d;
            end if;
        end if;
        cout <= d;
    end process;
end divide;

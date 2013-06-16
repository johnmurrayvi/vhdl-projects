-----------------------------------
-- Module Name:    CDiv - Divide --
-----------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity CDiv is
    port(Cin  : in  std_logic;
         TCvl : in  integer;
         Cout : out std_logic);
end CDiv;

-- Important values (for 50 MHz CLK):
-- 1 Hz                 -> TC = 84
-- 2 Hz                 -> TC = 71
-- 5 Hz                 -> TC = 56
-- 8 Hz                 -> TC = 50
-- 16 Hz                -> TC = 42
-- 1 KHz (~987.6 Hz)    -> TC = 15
-- 5 KHz                -> TC = 10

architecture Divide of CDiv is
    signal TC: integer; -- Time Constant
    signal c0,c1,c2,c3: integer range 0 to 1000;
    signal D: std_logic := '0';
begin

    TC <= TCvl;

    process(Cin, D)
    begin
        if (Cin'event and Cin='1') then        
            c0 <= c0 + 1;
            if c0 = TC then
                c0 <= 0;
                c1 <= c1 + 1;
            elsif c1 = TC then
                c1 <= 0;
                c2 <= c2 + 1;
            elsif c2 = TC then
                c2 <= 0;
                c3 <= c3 + 1;
            elsif c3 = TC then
                c3 <= 0;
                D <= NOT D;
            end if;
        end if;
        Cout <= D;
    end process ;
end Divide ;

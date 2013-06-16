----------------------------------------------
-- Module Name:    ClockController - switch --
----------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.Hex4Dig2SSeg_Package.all;

entity ClockController is
    port ( 
        clock : in  std_logic;
        clk2Hz  : out std_logic;
        clk5Hz  : out std_logic;
        clk1KHz : out std_logic
    );
end ClockController;

architecture switch of ClockController is
    constant TC2Hz  : integer := 71;    -- TC for 2 Hz clock
    constant TC5Hz  : integer := 56;    -- TC for 5 Hz clock
    constant TC1KHz : integer := 15;    -- TC for 1 KHz clock
begin

    c2Hz: cdiv port map (clock, TC2Hz, clk2Hz);
    c5Hz: cdiv port map (clock, TC5Hz, clk5Hz);
    c1KHz: cdiv port map (clock, TC1KHz, clk1KHz);

end switch;


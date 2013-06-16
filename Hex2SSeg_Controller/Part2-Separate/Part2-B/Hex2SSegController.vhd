----------------------------------------------
-- Module Name:    ClockController - switch --
----------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.Hex4Digs_2_SSeg_Package.all;

entity ClockController is
    port ( clock : in  std_logic;
           sw0   : in  std_logic;
           clk   : out std_logic);
end ClockController;

architecture switch of ClockController is
    constant TC5Hz  : integer := 56;    -- TC for 5 Hz clock
    constant TC1KHz : integer := 15;    -- TC for 1 KHz clock
    signal clk5Hz : std_logic := '0';  -- 5 Hz clock
    signal clk1KHz : std_logic := '0';  -- 1 KHz clock
begin

    c5Hz: CDiv port map (clock, TC5Hz, clk5Hz);
    c1KHz: CDiv port map (clock, TC1KHz, clk1KHz);

    -- use switch to select fast or slow clk
    process (sw0)
    begin
        case sw0 is
            when '0' =>
                clk <= clk1KHz;
            when others =>
                clk <= clk5Hz;
        end case;
    end process;
end switch;


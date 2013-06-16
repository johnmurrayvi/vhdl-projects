----------------------------------------------------------------------------------
-- Company: Digilent RO
-- Engineer: Mircea Dabacan
-- 
-- Create Date:    12:57:12 03/01/2008 
-- Design Name: 
-- Module Name:    MouseRefComp - Structural 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: This is the structural VHDL code of the 
--              Digilent Mouse Reference Component.
--              It instantiates three components:
--                - ps2interface
--                - mouse_controller
--                - resolution_mouse_informer
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library unisim;
use unisim.vcomponents.all;

use work.mouse_ref_pkg.all;

entity MouseRefComp is
    port (  
        clk        : in    std_logic; 
        resolution : in    std_logic; 
        rst        : in    std_logic; 
        switch     : in    std_logic; 
        left       : out   std_logic; 
        middle     : out   std_logic; 
        new_event  : out   std_logic; 
        right      : out   std_logic;
        busy       : out   std_logic;
        xpos       : out   std_logic_vector(9 downto 0); 
        ypos       : out   std_logic_vector(9 downto 0); 
        zpos       : out   std_logic_vector(3 downto 0); 
        ps2_clk    : inout std_logic; 
        ps2_data   : inout std_logic
    );
end MouseRefComp;

architecture Structural of MouseRefComp is

    signal TX_DATA      : std_logic_vector(7 downto 0);
    signal bitSetMaxX   : std_logic;
    signal vecValue     : std_logic_vector(9 downto 0);
    signal bitRead      : std_logic;
    signal bitWrite     : std_logic;
    signal bitErr       : std_logic;
    signal bitSetX      : std_logic;
    signal bitSetY      : std_logic;
    signal bitSetMaxY   : std_logic;
    signal vecRxData    : std_logic_vector(7 downto 0);

begin

    MouseCtrlInst : mouse_controller
        port map (
            clk => clk,
            rst => rst,
            read => bitRead,
            write => bitWrite,
            err => bitErr,
            setmax_x => bitSetMaxX,
            setmax_y => bitSetMaxY,
            setx => bitSetX,
            sety => bitSetY,
            value(9 downto 0) => vecValue(9 downto 0),
            rx_data(7 downto 0) => vecRxData(7 downto 0),
            tx_data(7 downto 0) => TX_DATA(7 downto 0),
            left => left,
            middle => middle,
            right => right,
            xpos(9 downto 0) => xpos(9 downto 0),
            ypos(9 downto 0) => ypos(9 downto 0),
            zpos(3 downto 0) => zpos(3 downto 0),
            new_event => new_event
        );
     
    ResMouseInfInst : resolution_mouse_informer
        port map (
            clk => clk,
            resolution => resolution,
            rst => rst,
            switch => switch,
            setmax_x => bitSetMaxX,
            setmax_y => bitSetMaxY,
            setx => bitSetX,
            sety => bitSetY,
            value(9 downto 0) => vecValue(9 downto 0)
        );
     
    Pss2Inst : ps2interface
        port map (
            clk => clk,
            rst => rst,
            tx_data(7 downto 0) => TX_DATA(7 downto 0),
            read => bitRead,
            write => bitWrite,
            busy => busy,
            err => bitErr,
            rx_data(7 downto 0) => vecRxData(7 downto 0),
            ps2_clk => ps2_clk,
            ps2_data => ps2_data
        );
     
end Structural;

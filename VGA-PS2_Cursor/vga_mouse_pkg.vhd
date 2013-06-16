
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
library unisim;
use unisim.vComponents.all;

package vga_mouse_pkg is

    --- TOP LEVEL COMPONENTS ---

    component mousecomp
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
    end component;

    component vgacomp is
        port (
            clk         : in  std_logic;
            clk_25      : in  std_logic;
            clk_40      : in  std_logic;
            rst         : in  std_logic;
            resolution  : in  std_logic;
            click       : in  std_logic;
            bgsw        : in  std_logic_vector(2 downto 0);
            xpos        : in  std_logic_vector(9 downto 0);
            ypos        : in  std_logic_vector(9 downto 0);
            hsync       : out std_logic;
            vsync       : out std_logic;
            red         : out std_logic_vector(2 downto 0);
            green       : out std_logic_vector(2 downto 0);
            blue        : out std_logic_vector(2 downto 1)
        );
    end component;

    component cdiv
        port (
            clk  : in  std_logic;
            tcvl : in  integer;          
            cout : out std_logic
        );
    end component;

    --- DIGITAL CLK MANAGERS ---

    component dcm_25mhz
        port (
            clkin_in        : in  std_logic;
            clkdv_out       : out std_logic;
--            clkin_ibufg_out : out std_logic;
            clk0_out        : out std_logic := '0'
        );
    end component;

    component dcm_40mhz
        port (
            clkin_in        : in  std_logic;
            clkdv_out       : out std_logic;
--            clkin_ibufg_out : out std_logic;
            clk0_out        : out std_logic := '0'
        );
    end component;


    --- PS/2 MOUSE ---

    component mouse_controller
        port ( 
            clk         : in std_logic;
            rst         : in std_logic;
            read        : in std_logic;
            err         : in std_logic;
            rx_data     : in std_logic_vector(7 downto 0);

            xpos        : out std_logic_vector(9 downto 0);
            ypos        : out std_logic_vector(9 downto 0);
            zpos        : out std_logic_vector(3 downto 0);
            left        : out std_logic;
            middle      : out std_logic;
            right       : out std_logic;
            new_event   : out std_logic;
            tx_data     : out std_logic_vector(7 downto 0);
            write       : out std_logic;

            value       : in std_logic_vector(9 downto 0);
            setx        : in std_logic;
            sety        : in std_logic;
            setmax_x    : in std_logic;
            setmax_y    : in std_logic
        );
    end component;
     
    component resolution_mouse_informer
        port ( 
            clk         : in std_logic;
            rst         : in std_logic;

            resolution  : in std_logic;
            switch      : in std_logic;

            value       : out std_logic_vector(9 downto 0);
            setx        : out std_logic;
            sety        : out std_logic;
            setmax_x    : out std_logic;
            setmax_y    : out std_logic
        );
    end component;
     
    component ps2interface
        port ( 
            ps2_clk  : inout std_logic;
            ps2_data : inout std_logic;

            clk      : in std_logic;
            rst      : in std_logic;

            tx_data  : in std_logic_vector(7 downto 0);
            write    : in std_logic;
            
            rx_data  : out std_logic_vector(7 downto 0);
            read     : out std_logic;
            busy     : out std_logic;
            err      : out std_logic
        );
    end component;


    --- MOUSE CURSOR ---

    component mouse_displayer is
        port (
            clk      : in std_logic;
            pixel_clk: in std_logic;
            xpos     : in std_logic_vector(9 downto 0);
            ypos     : in std_logic_vector(9 downto 0);
            hcount   : in std_logic_vector(10 downto 0);
            vcount   : in std_logic_vector(10 downto 0);
            blank    : in std_logic;
            click    : in std_logic;
            red_in   : in std_logic_vector(2 downto 0);
            green_in : in std_logic_vector(2 downto 0);
            blue_in  : in std_logic_vector(2 downto 1);
            red_out  : out std_logic_vector(2 downto 0);
            green_out: out std_logic_vector(2 downto 0);
            blue_out : out std_logic_vector(2 downto 1)
        );
    end component;


    --- VGA ---

    component vga_controller_640_60
        port ( 
            rst       : in    std_logic; 
            pixel_clk : in    std_logic; 
            HS        : out   std_logic; 
            VS        : out   std_logic; 
            blank     : out   std_logic; 
            hcount    : out   std_logic_vector(10 downto 0); 
            vcount    : out   std_logic_vector(10 downto 0)
        );
    end component;

    component vga_controller_800_60
        port ( 
            rst       : in    std_logic; 
            HS        : out   std_logic; 
            VS        : out   std_logic; 
            blank     : out   std_logic; 
            pixel_clk : in    std_logic; 
            vcount    : out   std_logic_vector (10 downto 0); 
            hcount    : out   std_logic_vector (10 downto 0)
        );
    end component;

    component vga_res_sel
        port (
            resolution  : in std_logic;

            HS_640_60   : in std_logic;
            VS_640_60   : in std_logic;
            HS_800_60   : in std_logic;
            VS_800_60   : in std_logic;

            red_25      : in std_logic_vector(2 downto 0);
            green_25    : in std_logic_vector(2 downto 0);
            blue_25     : in std_logic_vector(2 downto 1);

            red_40      : in std_logic_vector(2 downto 0);
            green_40    : in std_logic_vector(2 downto 0);
            blue_40     : in std_logic_vector(2 downto 1);

            hs          : out std_logic;    -- Horizontal sync
            vs          : out std_logic;    -- Vertical sync

            red         : out std_logic_vector(2 downto 0);
            green       : out std_logic_vector(2 downto 0);
            blue        : out std_logic_vector(2 downto 1)
        );
    end component;

end vga_mouse_pkg;

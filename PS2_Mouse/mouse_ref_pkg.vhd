
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library unisim;
use unisim.vcomponents.all;

package mouse_ref_pkg is

	component MouseRefComp
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
            xpos       : out   std_logic_vector (9 downto 0); 
            ypos       : out   std_logic_vector (9 downto 0); 
            zpos       : out   std_logic_vector (3 downto 0); 
            ps2_clk    : inout std_logic; 
            ps2_data   : inout std_logic
		);
	end component;

	component cdiv
        port (
            cin  : in  std_logic;
            tcvl : in  integer;          
            cout : out std_logic
        );
	end component;

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

end mouse_ref_pkg;

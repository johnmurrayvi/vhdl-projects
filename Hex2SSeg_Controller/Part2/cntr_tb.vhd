--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:43:14 02/20/2013
-- Design Name:   
-- Module Name:   /home/jmurray/Desktop/UTK/Spring2013/ECE351/HW/HW3-VDemo/cntr/cntr_tb.vhd
-- Project Name:  cntr
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Hex4Digs_2_SSeg
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY cntr_tb IS
END cntr_tb;
 
ARCHITECTURE behavior OF cntr_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Hex4Digs_2_SSeg
    PORT(
         clock : IN  std_logic;
         inclk : IN  std_logic;
         sw0 : IN  std_logic;
         incr : IN  std_logic_vector(3 downto 0);
         anodes : OUT  std_logic_vector(3 downto 0);
         cathodes : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal inclk : std_logic := '0';
   signal sw0 : std_logic := '0';
   signal incr : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal anodes : std_logic_vector(3 downto 0);
   signal cathodes : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 20 ns;
   constant inclk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Hex4Digs_2_SSeg PORT MAP (
          clock => clock,
          inclk => inclk,
          sw0 => sw0,
          incr => incr,
          anodes => anodes,
          cathodes => cathodes
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 
   inclk_process :process
   begin
		inclk <= '0';
		wait for inclk_period/2;
		inclk <= '1';
		wait for inclk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

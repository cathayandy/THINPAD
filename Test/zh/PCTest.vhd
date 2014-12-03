--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:16:52 11/26/2014
-- Design Name:   
-- Module Name:   C:/Users/K7/CPU/PCTest.vhd
-- Project Name:  CPU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PC
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
 
ENTITY PCTest IS
END PCTest;
 
ARCHITECTURE behavior OF PCTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         Rst : IN  std_logic;
         Clk : IN  std_logic;
         PcValueRd : OUT  std_logic_vector(15 downto 0);
         PcValueWr : IN  std_logic_vector(15 downto 0);
         Hold : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Rst : std_logic := '0';
   signal Clk : std_logic := '0';
   signal PcValueWr : std_logic_vector(15 downto 0) := (others => '0');
   signal Hold : std_logic := '0';

 	--Outputs
   signal PcValueRd : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 20 ns; -- 50MHz
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          Rst => Rst,
          Clk => Clk,
          PcValueRd => PcValueRd,
          PcValueWr => PcValueWr,
          Hold => Hold
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.		
		Rst <= '0';
      wait for Clk_period*2 + 2 ns;	
		Rst <= '1';
		
      wait for Clk_period*2;
      PcValueWr <= "0011001100110011";

		wait for Clk_period*2;
		PcValueWr <= "1010101010101010";
		Hold <= '1';
		
		wait for Clk_period*2;
		PcValueWr <= "1100110011000000";
		Hold <= '0';

      wait;
   end process;

END;

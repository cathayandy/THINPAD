--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:10:29 12/03/2014
-- Design Name:   
-- Module Name:   C:/Users/Nikifor Zhao/CPU/TEST_CPU.vhd
-- Project Name:  CPU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CPU
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
 
ENTITY TEST_CPU IS
END TEST_CPU;
 
ARCHITECTURE behavior OF TEST_CPU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CPU
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         Ram1Addr : OUT  std_logic_vector(17 downto 0);
         Ram1Data : INOUT  std_logic_vector(15 downto 0);
         Ram2Addr : OUT  std_logic_vector(17 downto 0);
         Ram2Data : INOUT  std_logic_vector(15 downto 0);
         l : OUT  std_logic_vector(15 downto 0);
         TBRE : IN  std_logic;
         TSRE : IN  std_logic;
         DataReady : IN  std_logic;
         RDN : OUT  std_logic;
         WRN : OUT  std_logic;
         Ram1OE : OUT  std_logic;
         Ram1WE : OUT  std_logic;
         Ram1EN : OUT  std_logic;
         Ram2OE : OUT  std_logic;
         Ram2WE : OUT  std_logic;
         Ram2EN : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal TBRE : std_logic := '0';
   signal TSRE : std_logic := '0';
   signal DataReady : std_logic := '0';

	--BiDirs
   signal Ram1Data : std_logic_vector(15 downto 0);
   signal Ram2Data : std_logic_vector(15 downto 0);

 	--Outputs
   signal Ram1Addr : std_logic_vector(17 downto 0);
   signal Ram2Addr : std_logic_vector(17 downto 0);
   signal l : std_logic_vector(15 downto 0);
   signal RDN : std_logic;
   signal WRN : std_logic;
   signal Ram1OE : std_logic;
   signal Ram1WE : std_logic;
   signal Ram1EN : std_logic;
   signal Ram2OE : std_logic;
   signal Ram2WE : std_logic;
   signal Ram2EN : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CPU PORT MAP (
          clk => clk,
          rst => rst,
          Ram1Addr => Ram1Addr,
          Ram1Data => Ram1Data,
          Ram2Addr => Ram2Addr,
          Ram2Data => Ram2Data,
          l => l,
          TBRE => TBRE,
          TSRE => TSRE,
          DataReady => DataReady,
          RDN => RDN,
          WRN => WRN,
          Ram1OE => Ram1OE,
          Ram1WE => Ram1WE,
          Ram1EN => Ram1EN,
          Ram2OE => Ram2OE,
          Ram2WE => Ram2WE,
          Ram2EN => Ram2EN
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     	

      wait for clk_period*3;

      -- insert stimulus here 
		rst <= '0';
		wait for clk_period*3;
		rst <= '1';
		wait for clk_period*10;
		
      wait;
   end process;

END;

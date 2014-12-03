----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:18:09 11/30/2014 
-- Design Name: 
-- Module Name:    REG1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity REG1 is
    port( InsIn: in std_logic_vector(15 downto 0);
          ImmIn: in std_logic_vector(10 downto 0);
          NewPCIn: in std_logic_vector(15 downto 0);
          JumpCtrlIn: in std_logic;
          clk, rst: in std_logic;
          HazardCtrl: in std_logic;
          IntCtrl: in std_logic;
          BranchCtrl: in std_logic;
          InsOut: out std_logic_vector(15 downto 0);
          ImmOut: out std_logic_vector(10 downto 0);
          NewPCOut: out std_logic_vector(15 downto 0);
          JumpCtrlOut: out std_logic);
end REG1;

architecture Behavioral of REG1 is
begin
	process(clk, rst)
	begin
		if rst = '0' then
			InsOut <= "0000100000000000";
			ImmOut <= "00000000000";
			NewPCOut <= "0000000000000000";
			JumpCtrlOut <= '0';
		elsif clk = '1' and clk'event then
			if HazardCtrl = '1' then
			elsif BranchCtrl = '1' then
				InsOut <= "0000100000000000";
				ImmOut <= "00000000000";
				NewPCOut <= "0000000000000000";
				JumpCtrlOut <= '0';	
			else
				InsOut <= InsIn;
				ImmOut <= ImmIn;
				NewPCOut <= NewPCIn;
				JumpCtrlOut <= JumpCtrlIn;
			end if;
		end if;
	end process;
end Behavioral;


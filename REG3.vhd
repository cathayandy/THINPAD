----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:38:45 12/01/2014 
-- Design Name: 
-- Module Name:    REG3 - Behavioral 
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

entity REG3 is
    port( WriteRegCtrlIn: in std_logic_vector(3 downto 0);
          MemRdCtrlIn, MemWrCtrlIn, RegWrSrcCtrlIn: in std_logic;
          Reg2DataIn: in std_logic_vector(15 downto 0);
          ALUResIn: in std_logic_vector(15 downto 0);
          NewPCIn: in std_logic_vector(15 downto 0);
          clk, rst: in std_logic;
          HazardCtrl: in std_logic;
			 WriteRegCtrlOut: out std_logic_vector(3 downto 0);
          MemRdCtrlOut, MemWrCtrlOut, RegWrSrcCtrlOut: out std_logic;
          Reg2DataOut: out std_logic_vector(15 downto 0);
          ALUResOut: out std_logic_vector(15 downto 0);
          NewPCOut: out std_logic_vector(15 downto 0));
end REG3;

architecture Behavioral of REG3 is
begin
	process(clk, rst)
	begin
		if rst = '0' then
			 MemRdCtrlOut <= '0';
			 MemWrCtrlOut <= '0';
			 RegWrSrcCtrlOut <= '0';
			 WriteRegCtrlOut <= "1111";
			 Reg2DataOut <= "0000000000000000";
          ALUResOut <= "0000000000000000";
          NewPCOut <= "0000000000000000";
		elsif clk = '1' and clk'event then
			if HazardCtrl = '1' then	
			 MemRdCtrlOut <= '0';
			 MemWrCtrlOut <= '0';
			 RegWrSrcCtrlOut <= '0';
			 WriteRegCtrlOut <= "1111";
			 Reg2DataOut <= "0000000000000000";
          ALUResOut <= "0000000000000000";
          NewPCOut <= "0000000000000000";
			else
			 MemRdCtrlOut <= MemRdCtrlIn;
			 MemWrCtrlOut <= MemWrCtrlIn;
			 RegWrSrcCtrlOut <= RegWrSrcCtrlIn;
			 WriteRegCtrlOut <= WriteRegCtrlIn;
			 Reg2DataOut <= Reg2DataIn;
          ALUResOut <= ALUResIn;
          NewPCOut <= NewPCIn;
			end if;
		end if;
	end process;



end Behavioral;


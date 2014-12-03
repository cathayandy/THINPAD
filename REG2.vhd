----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:40:34 12/01/2014 
-- Design Name: 
-- Module Name:    REG2 - Behavioral 
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

entity REG2 is
    port( ReadReg1CtrlIn, ReadReg2CtrlIn: in std_logic_vector(3 downto 0);
          WriteRegCtrlIn: in std_logic_vector(3 downto 0);
          PCSrcACtrlIn, PCSrcBCtrlIn: in std_logic;
          ALUSrcACtrlIn, ALUSrcBCtrlIn: in std_logic_vector(1 downto 0);
          ALUOpCtrlIn: in std_logic_vector(3 downto 0);
          MemRdCtrlIn, MemWrCtrlIn, RegWrSrcCtrlIn: in std_logic;
          JumpCtrlIn: in std_logic;
          Reg1DataIn, Reg2DataIn: in std_logic_vector(15 downto 0);
          NewPCIn: in std_logic_vector(15 downto 0);
          ImmIn: in std_logic_vector(15 downto 0);
          clk, rst: in std_logic;
          HazardCtrl: in std_logic;
          IntCtrl: in std_logic;
          BranchCtrl: in std_logic;
          ReadReg1CtrlOut, ReadReg2CtrlOut: out std_logic_vector(3 downto 0);
          WriteRegCtrlOut: out std_logic_vector(3 downto 0);
          PCSrcACtrlOut, PCSrcBCtrlOut: out std_logic;
          ALUSrcACtrlOut, ALUSrcBCtrlOut: out std_logic_vector(1 downto 0);
          ALUOpCtrlOut: out std_logic_vector(3 downto 0);
          MemRdCtrlOut, MemWrCtrlOut, RegWrSrcCtrlOut: out std_logic;
          JumpCtrlOut: out std_logic;
          Reg1DataOut, Reg2DataOut: out std_logic_vector(15 downto 0);
          NewPCOut: out std_logic_vector(15 downto 0);
          ImmOut: out std_logic_vector(15 downto 0));
end REG2;

architecture Behavioral of REG2 is
begin
	process(clk, rst)
	begin
		if rst = '0' then
		    ReadReg1CtrlOut <= "1111";
			 ReadReg2CtrlOut <= "1111";
          WriteRegCtrlOut <= "1111";
          PCSrcACtrlOut <= '0';
			 PCSrcBCtrlOut <= '0';
          ALUSrcACtrlOut <= "00";
			 ALUSrcBCtrlOut <= "00";
          ALUOpCtrlOut <= "0000";
          MemRdCtrlOut <= '0';
			 MemWrCtrlOut <= '0';
			 RegWrSrcCtrlOut <= '0';
          JumpCtrlOut <= '0';
          Reg1DataOut <= "0000000000000000";
			 Reg2DataOut <= "0000000000000000";
          NewPCOut <= "0000000000000000";
          ImmOut <= "0000000000000000";
		elsif clk = '1' and clk'event then
		  if HazardCtrl = '1' then
		  elsif BranchCtrl = '1' then 
		    ReadReg1CtrlOut <= "1111";
			 ReadReg2CtrlOut <= "1111";
          WriteRegCtrlOut <= "1111";
          PCSrcACtrlOut <= '0';
			 PCSrcBCtrlOut <= '0';
          ALUSrcACtrlOut <= "00";
			 ALUSrcBCtrlOut <= "00";
          ALUOpCtrlOut <= "0000";
          MemRdCtrlOut <= '0';
			 MemWrCtrlOut <= '0';
			 RegWrSrcCtrlOut <= '0';
          JumpCtrlOut <= '0';
          Reg1DataOut <= "0000000000000000";
			 Reg2DataOut <= "0000000000000000";
          NewPCOut <= "0000000000000000";
          ImmOut <= "0000000000000000";
		  else
		  	 ReadReg1CtrlOut <= ReadReg1CtrlIn;
			 ReadReg2CtrlOut <= ReadReg2CtrlIn;
          WriteRegCtrlOut <= WriteRegCtrlIn;
          PCSrcACtrlOut <= PCSrcACtrlIn;
			 PCSrcBCtrlOut <= PCSrcBCtrlIn;
          ALUSrcACtrlOut <= ALUSrcACtrlIn;
			 ALUSrcBCtrlOut <= ALUSrcBCtrlIn;
          ALUOpCtrlOut <= ALUOpCtrlIn;
          MemRdCtrlOut <= MemRdCtrlIn;
			 MemWrCtrlOut <= MemWrCtrlIn;
			 RegWrSrcCtrlOut <= RegWrSrcCtrlIn;
          JumpCtrlOut <= JumpCtrlIn;
          Reg1DataOut <= Reg1DataIn;
			 Reg2DataOut <= Reg2DataIn;
          NewPCOut <= NewPCIn;
          ImmOut <= ImmIn;
		  end if;
		end if;
	end process;

end Behavioral;


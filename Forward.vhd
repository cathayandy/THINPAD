----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:02:25 12/02/2014 
-- Design Name: 
-- Module Name:    Forward - Behavioral 
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

entity Forward is
    port( ALURes, WriteBackData: in std_logic_vector(15 downto 0);
          Reg1DataOld, Reg2DataOld: in std_logic_vector(15 downto 0);
          MemWrRegCtrl, WBWrRegCtrl: in std_logic_vector(3 downto 0);
          ReadReg1Ctrl, ReadReg2Ctrl: in std_logic_vector(3 downto 0);
          Reg1DataNew, Reg2DataNew: out std_logic_vector(15 downto 0));
end Forward;

architecture Behavioral of Forward is
begin
	process(ALURes, WriteBackData, Reg1DataOld, Reg2DataOld, MemWrRegCtrl, WBWrRegCtrl, ReadReg1Ctrl, ReadReg2Ctrl)
	begin
		Reg1DataNew <= Reg1DataOld;
		Reg2DataNew <= Reg2DataOld;
		if WBWrRegCtrl /= "1111" and ReadReg1Ctrl = WBWrRegCtrl then
			Reg1DataNew <= WriteBackData;
		end if;
		if WBWrRegCtrl /= "1111" and ReadReg2Ctrl = WBWrRegCtrl then
			Reg2DataNew <= WriteBackData;
		end if;
		if MemWrRegCtrl /= "1111" and ReadReg1Ctrl = MemWrRegCtrl then
			Reg1DataNew <= ALURes;
		end if;
		if MemWrRegCtrl /= "1111" and ReadReg2Ctrl = MemWrRegCtrl then
			Reg2DataNew <= ALURes;
		end if;
	end process;
end Behavioral;


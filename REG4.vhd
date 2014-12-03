----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:55:07 12/01/2014 
-- Design Name: 
-- Module Name:    REG4 - Behavioral 
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

entity REG4 is
    port( WriteRegCtrlIn: in std_logic_vector(3 downto 0);
          RegWrSrcCtrlIn: in std_logic;
          ALUResIn: in std_logic_vector(15 downto 0);
          MemDataIn: in std_logic_vector(15 downto 0);
          clk, rst: in std_logic;
          WriteRegCtrlOut: out std_logic_vector(3 downto 0);
          RegWrSrcCtrlOut: out std_logic;
          ALUResOut: out std_logic_vector(15 downto 0);
          MemDataOut: out std_logic_vector(15 downto 0));
end REG4;

architecture Behavioral of REG4 is
begin
	process(clk, rst)
	begin
		if rst = '0' then
          WriteRegCtrlOut <= "1111";
          RegWrSrcCtrlOut <= '0';
          ALUResOut <= "0000000000000000";
          MemDataOut <= "0000000000000000";
		elsif clk = '1' and clk'event then
          WriteRegCtrlOut <= WriteRegCtrlIn;
          RegWrSrcCtrlOut <= RegWrSrcCtrlIn;
          ALUResOut <= ALUResIn;
          MemDataOut <= MemDataIn;
		end if;
	end process;

end Behavioral;


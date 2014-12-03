----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:18:11 12/02/2014 
-- Design Name: 
-- Module Name:    Branch - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Branch is
    port( CurPCIn, NewPCFromREG2In: in std_logic_vector(15 downto 0);
          PCAdderRes: in std_logic_vector(15 downto 0);
          ZeroCtrl: in std_logic;
          JumpCtrl: in std_logic;
          NewPCOut: out std_logic_vector(15 downto 0);
          JumpCtrlOut: out std_logic;
          BranchCtrlOut: out std_logic);
end Branch;

architecture Behavioral of Branch is
begin
	process(CurPCIn, NewPCFromREG2In, PCAdderRes, ZeroCtrl, JumpCtrl)
	begin
		NewPCOut <= CurPCIn + "0000000000000001";
		JumpCtrlOut <= '0';
		BranchCtrlOut <= '0';
		if (ZeroCtrl /= JumpCtrl) then
		    JumpCtrlOut <= '0';
			 BranchCtrlOut <= '1';
			 if (ZeroCtrl = '1') then
				NewPCOut <= PCAdderRes;
			 end if;
			 if (JumpCtrl = '1') then
				NewPCOut <= NewPCFromREG2In + "0000000000000001";
			 end if;
		end if;
	end process;
	

end Behavioral;


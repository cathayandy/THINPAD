----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:00:05 12/02/2014 
-- Design Name: 
-- Module Name:    PC - Behavioral 
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

entity PC is
    port( NextPC: in std_logic_vector(15 downto 0);
          HazardCtrl: in std_logic;
          IntCtrl: in std_logic;
          clk, rst: in std_logic;
		  CurPC: out std_logic_vector(15 downto 0));
end PC;

architecture Behavioral of PC is

begin
	process(clk, rst)
	begin
		if rst = '0' then
			CurPC <= "0000000000000000";
		elsif clk = '1' and clk'event then
			if HazardCtrl = '1' then
			else
				CurPC <= NextPC;
			end if;
		end if;
	end process;

end Behavioral;


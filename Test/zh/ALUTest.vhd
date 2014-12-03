--------------------------------------------------------------------------------
-- 测试单元：ALU单元测试 组合逻辑测试
-- 测试内容：
-- 时间/ns				测试														结果/AluRes Bool
--	0		非溢出数相加 0010 0101 0001 1110 + 0110 0110 1011 0011 	1000 1011 1101 0001 0
-- 10		溢出数相加 0011 0110 1011 0111 + 1111 1111 1111 1110		0011 0110 1011 0101 0
-- 20		两数相减 0000 0000 0000 0010 - 0000 0000 0000 0011		1111 1111 1111 1111 0
-- 30 	两数相与 1101 1100 0010 1010 & 0011 1111 0000 1000		0001 1100 0000 1000 0
-- 40		两数相或 0010 0011 1101 0101 | 1000 1011 0001 0101		1010 1011 1101 0101 0
-- 50		不等判定 0000 0000 1111 0000 /= 0000 0000 1111 0001		0000 0000 0000 0000 1
-- 60		相等判定 1110 1010 1101 0101 /= 1110 1010 1101 0101		0000 0000 0000 0000 0
-- 70		相反数计算 0000 0000 0000 0010									1111 1111 1111 1110 0
-- 80		取反计算 0101 1101 1100 0001										1010 0010 0011 1110 0
-- 90		左移（小于8） 0101 1101 1110 0110 << 3						1110 1111 0011 0000 0
-- 100 	左移8位 1101 1111 0010 0101 << 0								0010 0101 0000 0000 0
-- 110	左移9位 1100 0110 1101 0101 << 9								1000 1101 1010 1010 0
-- 120	算数右移2位 1011 0111 0110 1011 >> 2							1110 1101 1101 1010 0
-- 130	算数右移3位 0110 1011 0111 1101 >> 3							0000 1101 0110 1111 0
-- 140	算数右移8位 0111	1111 1101 0111 >> 0							0000 0000 0111 1111 0
-- 150 	加一运算 1111 1111 1111 1110										1111 1111 1111 1111 0  
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ALUTest IS
END ALUTest;
 
ARCHITECTURE behavior OF ALUTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         Op1 : IN  std_logic_vector(15 downto 0);
         Op2 : IN  std_logic_vector(15 downto 0);
         AluOp : IN  std_logic_vector(3 downto 0);
         AluRes : OUT  std_logic_vector(15 downto 0);
         Bool : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Op1 : std_logic_vector(15 downto 0) := (others => '0');
   signal Op2 : std_logic_vector(15 downto 0) := (others => '0');
   signal AluOp : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal AluRes : std_logic_vector(15 downto 0);
   signal Bool : std_logic;
	
	signal ExpAluRes : std_logic_vector(15 downto 0);
	signal ExpBool : std_logic;
	
	--Asserts
	signal Assrt : std_logic;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          Op1 => Op1,
          Op2 => Op2,
          AluOp => AluOp,
          AluRes => AluRes,
          Bool => Bool
        );

	Assrt <= '1' when AluRes = ExpAluRes and Bool = ExpBool else '0';
	
   -- Stimulus process
   stim_proc: process
   begin		
      Op1 <= "0010010100011110";
		Op2 <= "0110011010110011";
		AluOp <= "0000";
		ExpAluRes <= "1000101111010001";
		ExpBool <= '0';
      wait for 10 ns;
		
		Op1 <= "0011011010110111";
		Op2 <= "1111111111111110";
		AluOp <= "0000";
		ExpAluRes <= "0011011010110101";
		ExpBool <= '0';
		wait for 10 ns;
		
		Op1 <= "0000000000000010";
		Op2 <= "0000000000000011";
		AluOp <= "0001";
		ExpAluRes <= "1111111111111111";
		ExpBool <= '0';
		wait for 10 ns;
		
		Op1 <= "1101110000101010";
		Op2 <= "0011111100001000";
		AluOp <= "0010";
		ExpAluRes <= "0001110000001000";
		ExpBool <= '0';
		wait for 10 ns;
		
		Op1 <= "0010001111010101";
		Op2 <= "1000101100010101";
		AluOp <= "0011";
		ExpAluRes <= "1010101111010101";
		ExpBool <= '0';
		wait for 10 ns;
		
		Op1 <= "0000000011110000";
		Op2 <= "0000000011110001";
		AluOp <= "0100";
		ExpAluRes <= "0000000000000000";
		ExpBool <= '1';
		wait for 10 ns;
		
		Op1 <= "1110101011010101";
		Op2 <= "1110101011010101";
		AluOp <= "0100";
		ExpAluRes <= "0000000000000000";
		ExpBool <= '0';
		wait for 10 ns;
		
		Op1 <= "0000000000000000";
		Op2 <= "0000000000000010";
		AluOp <= "0101";
		ExpAluRes <= "1111111111111110";
		ExpBool <= '0';
		wait for 10 ns;
		
		Op1 <= "0000000000000000";
		Op2 <= "1010001000111110";
		AluOp <= "0110";
		ExpAluRes <= "0101110111000001";
		ExpBool <= '0';
		wait for 10 ns;
		
		Op1 <= "0101110111100110";
		Op2 <= "0000000000000011";
		AluOp <= "0111";
		ExpAluRes <= "1110111100110000";
		ExpBool <= '0';
		wait for 10 ns;
		
		Op1 <= "1101111100100101";
		Op2 <= "0000000000000000";
		AluOp <= "0111";
		ExpAluRes <= "0010010100000000";
		ExpBool <= '0';
		wait for 10 ns;
		
		Op1 <= "1100011011010101";
		Op2 <= "0000000000001001";
		AluOp <= "0111";
		ExpAluRes <= "1000110110101010";
		ExpBool <= '0';
		wait for 10 ns;
		
		Op1 <= "1011011101101011";
		Op2 <= "0000000000000010";
		AluOp <= "1000";
		ExpAluRes <= "1110110111011010";
		ExpBool <= '0';
		wait for 10 ns;
		
		Op1 <= "0110101101111101";
		Op2 <= "0000000000000011";
		AluOp <= "1000";
		ExpAluRes <= "0000110101101111";
		ExpBool <= '0';
		wait for 10 ns;
		
		Op1 <= "0111111111010111";
		Op2 <= "0000000000000000";
		AluOp <= "1000";
		ExpAluRes <= "0000000001111111";
		ExpBool <= '0';
		wait for 10 ns;
		
		Op1 <= "1111111111111110";
		Op2 <= "0000000000000000";
		AluOp <= "1001";
		ExpAluRes <= "1111111111111111";
		ExpBool <= '0';
		wait;
   end process;

END;

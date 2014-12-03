--------------------------------------------------------------------------------
-- 测试单元：BRCH
-- 测试数据：
-- 10 ns一个时钟周期，前半周1，后半周0
-- 测试1：MEM指令不跳转，没有分支预测
-- 测试2：MEM指令不跳转，有分支预测
-- 测试3：MEM指令跳转到AluRes，没有分支预测
-- 测试4：MEM指令跳转到Data2，没有分支预测
-- 测试5：MEM指令为跳转指令，但是不跳转没有分支预测
-- 测试6：MEM指令跳转到AluRes，分支预测成功
-- 测试7：MEM指令跳转到Data2，分支预测成功
-- 测试8：MEM指令为跳转指令，但是不跳转，分支预测成功
-- 测试9：MEM指令跳转到AluRes，分支预测失败
-- 测试10：MEM指令跳转到Data2，分支预测失败
-- 测试11：MEM指令为跳转指令，但是不跳转，分支预测失败
-- 测试12：外部中断
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY BRCHTest IS
END BRCHTest;
 
ARCHITECTURE behavior OF BRCHTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BRCH
    PORT(
         Pc : IN  std_logic_vector(15 downto 0);
         Data2 : IN  std_logic_vector(15 downto 0);
         AluRes : IN  std_logic_vector(15 downto 0);
         MemPc : IN  std_logic_vector(15 downto 0);
         PcSrc : IN  std_logic_vector(1 downto 0);
         Jcond : IN  std_logic_vector(2 downto 0);
         Int : IN  std_logic;
         IntEn : IN  std_logic;
         IntHdl : OUT  std_logic;
         EPc : OUT  std_logic_vector(15 downto 0);
         Bubble : OUT  std_logic_vector(2 downto 0);
         NPc : OUT  std_logic_vector(15 downto 0);
         Clk : IN  std_logic;
         Rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Pc : std_logic_vector(15 downto 0) := (others => '0');
   signal Data2 : std_logic_vector(15 downto 0) := (others => '0');
   signal AluRes : std_logic_vector(15 downto 0) := (others => '0');
   signal MemPc : std_logic_vector(15 downto 0) := (others => '0');
   signal PcSrc : std_logic_vector(1 downto 0) := (others => '0');
   signal Jcond : std_logic_vector(2 downto 0) := (others => '0');
   signal Int : std_logic := '0';
   signal IntEn : std_logic := '0';
   signal Clk : std_logic := '1';
   signal Rst : std_logic := '0';

 	--Outputs
   signal IntHdl : std_logic;
   signal EPc : std_logic_vector(15 downto 0);
   signal Bubble : std_logic_vector(2 downto 0);
   signal NPc : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
	-- Expectations
	signal ExpIntHdl : std_logic;
	signal ExpNPc : std_logic_vector(15 downto 0);
	signal ExpBubble : std_logic_vector(2 downto 0);
	signal ExpEPc : std_logic_vector(15 downto 0);
	
	-- Asserts
	signal Assrt : std_logic;
	signal Check : std_logic;
	signal Number : std_logic_vector(3 downto 0);
BEGIN

	Assrt <= '1' when ExpIntHdl = IntHdl and ExpNPc = NPc and ExpBubble = Bubble and ExpEPc = EPc else '0';
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BRCH PORT MAP (
          Pc => Pc,
          Data2 => Data2,
          AluRes => AluRes,
          MemPc => MemPc,
          PcSrc => PcSrc,
          Jcond => Jcond,
          Int => Int,
          IntEn => IntEn,
          IntHdl => IntHdl,
          EPc => EPc,
          Bubble => Bubble,
          NPc => NPc,
          Clk => Clk,
          Rst => Rst
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '1';
		wait for Clk_period/2;
		Clk <= '0';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.

      -- 测试1：MEM指令不跳转，没有分支预测
			Rst <= '0';
			wait for 15 ns;
			Rst <= '1';
			Jcond <= "000";
			PcSrc <= "00";
			AluRes <= "0000000000000000";
			MemPc <= "0000000000000000";
			Data2 <= "0000000000000000";
			Pc <= "0000000000000001";
			Int <= '0';
			IntEn <= '0';
			ExpNPc <= "0000000000000001";
			ExpBubble <= "000";
			ExpEPc <= "0000000000000000";
			ExpIntHdl <= '0';
			Check <= '1';
			Number <= "0001";
			wait for 5 ns;
			Check <= '0';
		-- 测试2：MEM指令不跳转，有分支预测
			Rst <= '0';
			wait for 15 ns;
			Rst <= '1';
			
			Jcond <= "001";
			PcSrc <= "01";
			AluRes <= "0000000000000100";
			MemPc <= "0000000000000010";
			Data2 <= "0000000000000000";
			Pc <= "0000000000000001";
			
			wait for 10 ns;
			
			Jcond <= "000";
			PcSrc <= "00";
			AluRes <= "0000000000000100";
			MemPc <= "0000000000000001";
			Data2 <= "0000000000000010";
			
			Pc <= "0000000000000010";
			
			ExpNPc <= "0000000000000100";
			ExpBubble <= "000";
			ExpEPc <= "0000000000000000";
			ExpIntHdl <= '0';
			Check <= '1';
			Number <= "0010";
			wait for 5 ns;
			Check <= '0';
			
		-- 测试3：MEM指令跳转到AluRes，没有分支预测
			Rst <= '0';
			wait for 15 ns;
			Rst <= '1';
			
			Jcond <= "001";
			PcSrc <= "01";
			AluRes <= "0000000000010100";
			MemPc <= "0000000000000001";
			Data2 <= "0000000000011000";
			
			Pc <= "0000000000000110";
			
			ExpNPc <= "0000000000010100";
			ExpBubble <= "111";
			ExpEPc <= "0000000000000000";
			ExpIntHdl <= '0';
			Check <= '1';
			Number <= "0011";
			wait for 5 ns;
			Check <= '0';
			
		-- 测试5：MEM指令为跳转指令，但是不跳转没有分支预测
			Rst <= '0';
			wait for 15 ns;
			Rst <= '1';
			
			Jcond <= "001";
			PcSrc <= "00";
			AluRes <= "0000000000010100";
			MemPc <= "0000000000000001";
			Data2 <= "0000000000011000";
			
			Pc <= "0000000000000110";
			
			ExpNPc <= "0000000000000110";
			ExpBubble <= "000";
			ExpEPc <= "0000000000000000";
			ExpIntHdl <= '0';
			Check <= '1';
			Number <= "0101";
			wait for 5 ns;
			Check <= '0';
			
		-- 测试6：MEM指令跳转到AluRes，分支预测成功
			Rst <= '0';
			wait for 15 ns;
			Rst <= '1';
			
			Jcond <= "001";
			PcSrc <= "01";
			AluRes <= "0000000000010100";
			MemPc <= "0000000000000010";
			Data2 <= "0000000000011000";
			
			Pc <= "0000000000000001";
			
			wait for 10 ns;
			
			Jcond <= "001";
			PcSrc <= "01";
			AluRes <= "0000000000010100";
			MemPc <= "0000000000000010";
			Data2 <= "0000000000011000";
			
			Pc <= "0000000000000101";
			
			ExpNPc <= "0000000000000101";
			ExpBubble <= "000";
			ExpEPc <= "0000000000000000";
			ExpIntHdl <= '0';
			Check <= '1';
			Number <= "0110";
			wait for 5 ns;
			Check <= '0';
			
		-- 测试9：MEM指令跳转到AluRes，分支预测失败
			Rst <= '0';
			wait for 15 ns;
			Rst <= '1';
			
			Jcond <= "001";
			PcSrc <= "01";
			AluRes <= "0000000000010100";
			MemPc <= "0000000000000010";
			Data2 <= "0000000000011000";
			
			Pc <= "0000000000000001";
			
			wait for 10 ns;
			
			Jcond <= "001";
			PcSrc <= "00";
			AluRes <= "0000000000010100";
			MemPc <= "0000000000000010";
			Data2 <= "0000000000011000";
			
			Pc <= "0000000000000001";
			
			wait for 10 ns;
			
			Jcond <= "001";
			PcSrc <= "01";
			AluRes <= "0000000000010100";
			MemPc <= "0000000000000010";
			Data2 <= "0000000000011000";
			
			Pc <= "0000000000000001";
			
			ExpNPc <= "0000000000010100";
			ExpBubble <= "111";
			ExpEPc <= "0000000000000000";
			ExpIntHdl <= '0';
			Check <= '1';
			Number <= "1001";
			wait for 5 ns;
			Check <= '0';
			
		-- 测试11：MEM指令为跳转指令，但是不跳转，分支预测失败
			Rst <= '0';
			wait for 15 ns;
			Rst <= '1';
			
			Jcond <= "001";
			PcSrc <= "01";
			AluRes <= "0000000000010100";
			MemPc <= "0000000000000010";
			Data2 <= "0000000000011000";
			
			Pc <= "0000000000000001";
			
			wait for 10 ns;
			
			Jcond <= "001";
			PcSrc <= "00";
			AluRes <= "0000000000010100";
			MemPc <= "0000000000000010";
			Data2 <= "0000000000011000";
			
			Pc <= "0000000000000001";
			
			ExpNPc <= "0000000000000010";
			ExpBubble <= "111";
			ExpEPc <= "0000000000000000";
			ExpIntHdl <= '0';
			Check <= '1';
			Number <= "1011";
			wait for 5 ns;
			Check <= '0';

		-- 测试12：外部中断
			Rst <= '0';
			wait for 15 ns;
			Rst <= '1';
			
			Jcond <= "001";
			PcSrc <= "00";
			AluRes <= "0000000000010100";
			MemPc <= "0000000000000010";
			Data2 <= "0000000000011000";
			
			Pc <= "0000000000000001";
			
			Int <= '1';
			IntEn <= '1';
			
			ExpNPc <= "1111111111111111";
			ExpBubble <= "111";
			ExpEPc <= "0000000000000010";
			ExpIntHdl <= '1';
			Check <= '1';
			Number <= "1100";
			wait for 5 ns;
			Check <= '0';
      wait;
   end process;

END;

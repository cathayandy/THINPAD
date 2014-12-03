--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY REGSTest IS
END REGSTest;
 
ARCHITECTURE behavior OF REGSTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT REGS
    PORT(
         Reg1 : IN  std_logic_vector(3 downto 0);
         Reg2 : IN  std_logic_vector(3 downto 0);
         Data1 : OUT  std_logic_vector(15 downto 0);
         Data2 : OUT  std_logic_vector(15 downto 0);
         RegWr : IN  std_logic;
         RegDataWr : IN  std_logic_vector(15 downto 0);
         RegDst : IN  std_logic_vector(3 downto 0);
         IntEn : OUT  std_logic;
         IntHdl : IN  std_logic;
         EPc : IN  std_logic_vector(15 downto 0);
         IntCode : IN  std_logic_vector(7 downto 0);
         Clk : IN  std_logic;
			Rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Reg1 : std_logic_vector(3 downto 0) := (others => '0');
   signal Reg2 : std_logic_vector(3 downto 0) := (others => '0');
   signal RegWr : std_logic := '0';
   signal RegDataWr : std_logic_vector(15 downto 0) := (others => '0');
   signal RegDst : std_logic_vector(3 downto 0) := (others => '0');
   signal IntHdl : std_logic := '0';
   signal EPc : std_logic_vector(15 downto 0) := (others => '0');
   signal IntCode : std_logic_vector(7 downto 0) := (others => '0');
   signal Clk : std_logic := '0';
	signal Rst : std_logic := '0';

 	--Outputs
   signal Data1 : std_logic_vector(15 downto 0);
   signal Data2 : std_logic_vector(15 downto 0);
   signal IntEn : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: REGS PORT MAP (
          Reg1 => Reg1,
          Reg2 => Reg2,
          Data1 => Data1,
          Data2 => Data2,
          RegWr => RegWr,
          RegDataWr => RegDataWr,
          RegDst => RegDst,
          IntEn => IntEn,
          IntHdl => IntHdl,
          EPc => EPc,
          IntCode => IntCode,
          Clk => Clk,
			 Rst => Rst
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 12 ns;
		Rst <= '1';
		
		Reg1 <= "0000";
		Reg2 <= "0001";

		-- 测试写入各个寄存器能否成功
		RegWr <= '1';
		RegDst <= "0000"; -- R0
		RegDataWr <= "0001000000000000";
		
		wait for 20 ns;
		
		RegDst <= "0001"; -- R1
		RegDataWr <= "0001000100010001";
		
		wait for 20 ns;
		
		RegDst <= "1001"; -- IH/IntEn
		RegDataWr <= "1000000000000000";
		
		wait for 20 ns;
		
		-- 测试不可写
		RegDst <= "0000";
		RegWr <= '0';
		RegDataWr <= "1111111111111111";
		
		-- 测试中断
		EPc <= "1111000000001111";
		IntCode <= "00001111";
		IntHdl <= '1';
		Reg1 <= "1011";
		Reg2 <= "1100";
		
		wait for 20 ns;
		
		Epc <= "1111111111111111";
		IntCode <= "11111111";
		IntHdl <= '0';
		
		wait for 20 ns;
		
		-- 测试读同时写问题，应该在时钟周期后更新值。
		Reg1 <= "0001";
		Reg2 <= "0000";
		RegDst <= "0001";
		RegDataWr <= "1010101010101010";
		RegWr <= '1';

      wait;
   end process;

END;

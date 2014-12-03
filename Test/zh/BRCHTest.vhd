--------------------------------------------------------------------------------
-- ���Ե�Ԫ��BRCH
-- �������ݣ�
-- 10 nsһ��ʱ�����ڣ�ǰ����1�������0
-- ����1��MEMָ���ת��û�з�֧Ԥ��
-- ����2��MEMָ���ת���з�֧Ԥ��
-- ����3��MEMָ����ת��AluRes��û�з�֧Ԥ��
-- ����4��MEMָ����ת��Data2��û�з�֧Ԥ��
-- ����5��MEMָ��Ϊ��תָ����ǲ���תû�з�֧Ԥ��
-- ����6��MEMָ����ת��AluRes����֧Ԥ��ɹ�
-- ����7��MEMָ����ת��Data2����֧Ԥ��ɹ�
-- ����8��MEMָ��Ϊ��תָ����ǲ���ת����֧Ԥ��ɹ�
-- ����9��MEMָ����ת��AluRes����֧Ԥ��ʧ��
-- ����10��MEMָ����ת��Data2����֧Ԥ��ʧ��
-- ����11��MEMָ��Ϊ��תָ����ǲ���ת����֧Ԥ��ʧ��
-- ����12���ⲿ�ж�
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

      -- ����1��MEMָ���ת��û�з�֧Ԥ��
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
		-- ����2��MEMָ���ת���з�֧Ԥ��
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
			
		-- ����3��MEMָ����ת��AluRes��û�з�֧Ԥ��
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
			
		-- ����5��MEMָ��Ϊ��תָ����ǲ���תû�з�֧Ԥ��
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
			
		-- ����6��MEMָ����ת��AluRes����֧Ԥ��ɹ�
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
			
		-- ����9��MEMָ����ת��AluRes����֧Ԥ��ʧ��
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
			
		-- ����11��MEMָ��Ϊ��תָ����ǲ���ת����֧Ԥ��ʧ��
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

		-- ����12���ⲿ�ж�
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

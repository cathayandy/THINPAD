--------------------------------------------------------------------------------
-- ²âÊÔÃû³Æ£ºID²âÊÔ
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY IDTest IS
END IDTest;
 
ARCHITECTURE behavior OF IDTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ID
    PORT(
         Insn : IN  std_logic_vector(15 downto 0);
         Reg1 : OUT  std_logic_vector(3 downto 0);
         Reg2 : OUT  std_logic_vector(3 downto 0);
         RegDst : OUT  std_logic_vector(3 downto 0);
         Imm : OUT  std_logic_vector(15 downto 0);
         Op1Src : OUT  std_logic;
         Op2Src : OUT  std_logic;
         AluOp : OUT  std_logic_vector(3 downto 0);
         TWr : OUT  std_logic;
         Jcond : OUT  std_logic_vector(2 downto 0);
         MemRd : OUT  std_logic;
         MemWr : OUT  std_logic;
         RegWr : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Insn : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Reg1 : std_logic_vector(3 downto 0);
	signal ExpReg1 : std_logic_vector(3 downto 0);
   signal Reg2 : std_logic_vector(3 downto 0);
	signal ExpReg2 : std_logic_vector(3 downto 0);
   signal RegDst : std_logic_vector(3 downto 0);
	signal ExpRegDst : std_logic_vector(3 downto 0);
   signal Imm : std_logic_vector(15 downto 0);
	signal ExpImm : std_logic_vector(15 downto 0);
   signal Op1Src : std_logic;
	signal ExpOp1Src : std_logic;
   signal Op2Src : std_logic;
	signal ExpOp2Src : std_logic;
   signal AluOp : std_logic_vector(3 downto 0);
	signal ExpAluOp : std_logic_vector(3 downto 0);
   signal TWr : std_logic;
	signal ExpTWr : std_logic;
   signal Jcond : std_logic_vector(2 downto 0);
	signal ExpJcond : std_logic_vector(2 downto 0);
   signal MemRd : std_logic;
	signal ExpMemRd : std_logic;
   signal MemWr : std_logic;
	signal ExpMemWr : std_logic;
   signal RegWr : std_logic;
	signal ExpRegWr : std_logic;

	
	signal Assrt : std_logic; 
    
BEGIN

	Assrt <= '1' when ExpReg1 = Reg1 and ExpReg2 = Reg2 and ExpRegDst = RegDst and ExpImm = Imm and 
		ExpOp1Src = Op1Src and ExpOp2Src = Op2Src and ExpAluOp = AluOp and ExpTWr = TWr and ExpJcond = Jcond and
		ExpMemRd = MemRd and ExpMemWr = MemWr and ExpRegWr = RegWr else '0';
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ID PORT MAP (
          Insn => Insn,
          Reg1 => Reg1,
          Reg2 => Reg2,
          RegDst => RegDst,
          Imm => Imm,
          Op1Src => Op1Src,
          Op2Src => Op2Src,
          AluOp => AluOp,
          TWr => TWr,
          Jcond => Jcond,
          MemRd => MemRd,
          MemWr => MemWr,
          RegWr => RegWr
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- ADDIU R0 0x33
		Insn <= "0100100000110011";
		ExpReg1 <= "0000";
		ExpReg2 <= "1111";
		ExpRegDst <= "0000";
		ExpImm <= "0000000000110011";
		ExpOp1Src <= '0';
		ExpOp2Src <= '1';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- ADDIU R1 0xF3
		Insn <= "0100100111110011";
		ExpReg1 <= "0001";
		ExpReg2 <= "1111";
		ExpRegDst <= "0001";
		ExpImm <= "1111111111110011";
		ExpOp1Src <= '0';
		ExpOp2Src <= '1';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- ADDIU3 R2 R3 0x7
		Insn <= "0100001001100111";
		ExpReg1 <= "0010";
		ExpReg2 <= "1111";
		ExpRegDst <= "0011";
		ExpImm <= "0000000000000111";
		ExpOp1Src <= '0';
		ExpOp2Src <= '1';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- ADDIU3 R2 R3 0x8
		Insn <= "0100001001101000";
		ExpReg1 <= "0010";
		ExpReg2 <= "1111";
		ExpRegDst <= "0011";
		ExpImm <= "1111111111111000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '1';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- ADDSP 0x88
		Insn <= "0110001110001000";
		ExpReg1 <= "1000";
		ExpReg2 <= "1111";
		ExpRegDst <= "1000";
		ExpImm <= "1111111110001000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '1';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
		
		-- ADDSP 0x78
		Insn <= "0110001101111000";
		ExpReg1 <= "1000";
		ExpReg2 <= "1111";
		ExpRegDst <= "1000";
		ExpImm <= "0000000001111000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '1';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- ADDU R3 R7 R2
		Insn <= "1110001111101001";
		ExpReg1 <= "0011";
		ExpReg2 <= "0111";
		ExpRegDst <= "0010";
		ExpImm <= "0000000000000000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '0';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- AND R4 R5
		Insn <= "1110110010101100";
		ExpReg1 <= "0100";
		ExpReg2 <= "0101";
		ExpRegDst <= "0100";
		ExpImm <= "0000000000000000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '0';
		ExpAluOp <= "0010";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- B 0x700
		Insn <= "0001011100000000";
		ExpReg1 <= "1111";
		ExpReg2 <= "1111";
		ExpRegDst <= "1111";
		ExpImm <= "1111111100000000";
		ExpOp1Src <= '1';
		ExpOp2Src <= '1';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "001";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '0';
      wait for 10 ns;
		
		-- B 0x300
		Insn <= "0001001100000000";
		ExpReg1 <= "1111";
		ExpReg2 <= "1111";
		ExpRegDst <= "1111";
		ExpImm <= "0000001100000000";
		ExpOp1Src <= '1';
		ExpOp2Src <= '1';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "001";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '0';
      wait for 10 ns;
		
		-- BEQZ R6 0x78
		Insn <= "0010011001111000";
		ExpReg1 <= "1111";
		ExpReg2 <= "0110";
		ExpRegDst <= "1111";
		ExpImm <= "0000000001111000";
		ExpOp1Src <= '1';
		ExpOp2Src <= '1';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "101";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '0';
      wait for 10 ns;
		
		-- BNEZ R6 0x78
		Insn <= "0010111001111000";
		ExpReg1 <= "1111";
		ExpReg2 <= "0110";
		ExpRegDst <= "1111";
		ExpImm <= "0000000001111000";
		ExpOp1Src <= '1';
		ExpOp2Src <= '1';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "100";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '0';
      wait for 10 ns;
		
		-- BTEQZ 0x90
		Insn <= "0110000010010000";
		ExpReg1 <= "1111";
		ExpReg2 <= "1111";
		ExpRegDst <= "1111";
		ExpImm <= "1111111110010000";
		ExpOp1Src <= '1';
		ExpOp2Src <= '1';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "010";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '0';
      wait for 10 ns;
		
		-- BTNEZ 0x90
		Insn <= "0110000110010000";
		ExpReg1 <= "1111";
		ExpReg2 <= "1111";
		ExpRegDst <= "1111";
		ExpImm <= "1111111110010000";
		ExpOp1Src <= '1';
		ExpOp2Src <= '1';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "011";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '0';
      wait for 10 ns;
		
		-- CMP R0 R2
		Insn <= "1110100001001010";
		ExpReg1 <= "0000";
		ExpReg2 <= "0010";
		ExpRegDst <= "1111";
		ExpImm <= "0000000000000000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '0';
		ExpAluOp <= "0100";
		ExpTWr <= '1';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '0';
      wait for 10 ns;
		
		-- JALR R3
		Insn <= "1110101111000000";
		ExpReg1 <= "1111";
		ExpReg2 <= "0011";
		ExpRegDst <= "1010";
		ExpImm <= "0000000000000000";
		ExpOp1Src <= '1';
		ExpOp2Src <= '1';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "110";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- JR
		Insn <= "1110101100000000";
		ExpReg1 <= "1111";
		ExpReg2 <= "0011";
		ExpRegDst <= "1111";
		ExpImm <= "0000000000000000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '0';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "110";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '0';
      wait for 10 ns;
		
		-- JRRA
		Insn <= "1110100000100000";
		ExpReg1 <= "1111";
		ExpReg2 <= "1010";
		ExpRegDst <= "1111";
		ExpImm <= "0000000000000000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '0';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "110";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '0';
      wait for 10 ns;
		
		-- LI R0 0x3F
		Insn <= "0110100000111111";
		ExpReg1 <= "1111";
		ExpReg2 <= "1111";
		ExpRegDst <= "0000";
		ExpImm <= "0000000000111111";
		ExpOp1Src <= '0';
		ExpOp2Src <= '1';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- LW R0 R1 0x10
		Insn <= "1001100000110000";
		ExpReg1 <= "0000";
		ExpReg2 <= "1111";
		ExpRegDst <= "0001";
		ExpImm <= "1111111111110000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '1';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '1';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- LW_SP R0 0x0
		Insn <= "1001000000000000";
		ExpReg1 <= "1000";
		ExpReg2 <= "1111";
		ExpRegDst <= "0000";
		ExpImm <= "0000000000000000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '1';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '1';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- MFIH R4
		Insn <= "1111010000000000";
		ExpReg1 <= "1001";
		ExpReg2 <= "1111";
		ExpRegDst <= "0100";
		ExpImm <= "0000000000000000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '0';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- MFPC R3
		Insn <= "1110101101000000";
		ExpReg1 <= "1111";
		ExpReg2 <= "1111";
		ExpRegDst <= "0011";
		ExpImm <= "0000000000000000";
		ExpOp1Src <= '1';
		ExpOp2Src <= '0';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- MTIH R3
		Insn <= "1111001100000001";
		ExpReg1 <= "0011";
		ExpReg2 <= "1111";
		ExpRegDst <= "1001";
		ExpImm <= "0000000000000000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '0';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- MTSP R3
		Insn <= "0110010001100000";
		ExpReg1 <= "0011";
		ExpReg2 <= "1111";
		ExpRegDst <= "1000";
		ExpImm <= "0000000000000000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '0';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- NEG R1 R2
		Insn <= "1110100101001011";
		ExpReg1 <= "1111";
		ExpReg2 <= "0010";
		ExpRegDst <= "0001";
		ExpImm <= "0000000000000000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '0';
		ExpAluOp <= "0101";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- NOT R0 R4
		Insn <= "1110100010001111";
		ExpReg1 <= "1111";
		ExpReg2 <= "0100";
		ExpRegDst <= "0000";
		ExpImm <= "0000000000000000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '0';
		ExpAluOp <= "0110";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- NOP
		Insn <= "0000100000000000";
		ExpReg1 <= "1111";
		ExpReg2 <= "1111";
		ExpRegDst <= "1111";
		ExpImm <= "0000000000000000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '0';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '0';
      wait for 10 ns;
		
		-- NOP
		Insn <= "0000100000000000";
		ExpReg1 <= "1111";
		ExpReg2 <= "1111";
		ExpRegDst <= "1111";
		ExpImm <= "0000000000000000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '0';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '0';
      wait for 10 ns;
		
		-- OR R3 R4
		Insn <= "1110101110001101";
		ExpReg1 <= "0011";
		ExpReg2 <= "0100";
		ExpRegDst <= "0011";
		ExpImm <= "0000000000000000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '0';
		ExpAluOp <= "0011";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- SLL R4 R2 1
		Insn <= "0011010001000100";
		ExpReg1 <= "0010";
		ExpReg2 <= "1111";
		ExpRegDst <= "0100";
		ExpImm <= "0000000000000001";
		ExpOp1Src <= '0';
		ExpOp2Src <= '1';
		ExpAluOp <= "0111";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- SRA R4 R2 1
		Insn <= "0011010001000111";
		ExpReg1 <= "0010";
		ExpReg2 <= "1111";
		ExpRegDst <= "0100";
		ExpImm <= "0000000000000001";
		ExpOp1Src <= '0';
		ExpOp2Src <= '1';
		ExpAluOp <= "1000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- SUBU R7 R0 R3
		Insn <= "1110011100001111";
		ExpReg1 <= "0111";
		ExpReg2 <= "0000";
		ExpRegDst <= "0011";
		ExpImm <= "0000000000000000";
		ExpOp1Src <= '0';
		ExpOp2Src <= '0';
		ExpAluOp <= "0001";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '0';
		ExpRegWr <= '1';
      wait for 10 ns;
		
		-- SW R1 R2 0x0f
		Insn <= "1101100101001111";
		ExpReg1 <= "0001";
		ExpReg2 <= "0010";
		ExpRegDst <= "1111";
		ExpImm <= "0000000000001111";
		ExpOp1Src <= '0';
		ExpOp2Src <= '1';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '1';
		ExpRegWr <= '0';
      wait for 10 ns;
		
		-- SW_SP R1 0x81
		Insn <= "1101000110000001";
		ExpReg1 <= "1000";
		ExpReg2 <= "0001";
		ExpRegDst <= "1111";
		ExpImm <= "0000000000001111";
		ExpOp1Src <= '0';
		ExpOp2Src <= '1';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '1';
		ExpRegWr <= '0';
      wait for 10 ns;
		
		-- SW_SP R1 0x81 Wrong
		Insn <= "1101000110000001";
		ExpReg1 <= "1000";
		ExpReg2 <= "0001";
		ExpRegDst <= "1111";
		ExpImm <= "0000000000001111";
		ExpOp1Src <= '0';
		ExpOp2Src <= '0';
		ExpAluOp <= "0000";
		ExpTWr <= '0';
		ExpJcond <= "000";
		ExpMemRd <= '0';
		ExpMemWr <= '1';
		ExpRegWr <= '0';
      wait for 10 ns;
		
		wait;
   end process;

END;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

entity CPU is
    port (clk, rst: in std_logic;
          Ram1Addr: out std_logic_vector(17 downto 0);
          Ram1Data: inout std_logic_vector(15 downto 0);
          Ram2Addr: out std_logic_vector(17 downto 0);
          Ram2Data: inout std_logic_vector(15 downto 0);
			 l: out std_logic_vector(15 downto 0);
			 dyp0: out std_logic_vector(6 downto 0);
          TBRE, TSRE, DataReady: in std_logic;
          RDN, WRN: out std_logic;
          Ram1OE, Ram1WE, Ram1EN, Ram2OE, Ram2WE, Ram2EN: out std_logic);
end entity;

architecture bhv of CPU is
  component PC
    port( NextPC: in std_logic_vector(15 downto 0);
          HazardCtrl: in std_logic;
          IntCtrl: in std_logic;
          clk, rst: in std_logic;
		    CurPC: out std_logic_vector(15 downto 0));
  end component;
  component IM
    port( RamData: in std_logic_vector(15 downto 0);
          Ins: out std_logic_vector(15 downto 0);
          Imm: out std_logic_vector(10 downto 0));
  end component;
  component REG1
    port( InsIn: in std_logic_vector(15 downto 0);
          ImmIn: in std_logic_vector(10 downto 0);
          NewPCIn: in std_logic_vector(15 downto 0);
          JumpCtrlIn: in std_logic;
          clk, rst: in std_logic;
          HazardCtrl: in std_logic;
          IntCtrl: in std_logic;
          BranchCtrl: in std_logic;
          InsOut: out std_logic_vector(15 downto 0);
          ImmOut: out std_logic_vector(10 downto 0);
          NewPCOut: out std_logic_vector(15 downto 0);
          JumpCtrlOut: out std_logic);
  end component;
  component Control
    port( Ins: in std_logic_vector(15 downto 0);
          ReadReg1, ReadReg2: out std_logic_vector(3 downto 0);
          WriteReg: out std_logic_vector(3 downto 0);
          ExtCtrl: out std_logic_vector(2 downto 0);
          PCSrcA, PCSrcB: out std_logic;
          ALUSrcA, ALUSrcB: out std_logic_vector(1 downto 0);
          ALUOp: out std_logic_vector(3 downto 0);
          MemRd, MemWr, RegWrSrc: out std_logic);
  end component;
  component RegisterHeap
    port( ReadReg1Ctrl, ReadReg2Ctrl: in std_logic_vector(3 downto 0);
          WriteRegCtrl: in std_logic_vector(3 downto 0);
          WriteRegData: in std_logic_vector(15 downto 0);
          Reg1Out, Reg2Out: out std_logic_vector(15 downto 0);
          --INT ports
          RetPC: in std_logic_vector(15 downto 0);
          IntCode: in std_logic_vector(3 downto 0);
          IntCtrl: in std_logic;
          IHOut: out std_logic_vector(15 downto 0);
			 clk: in std_logic);
  end component;
  component Extend
    port( ImmInput: in std_logic_vector(10 downto 0);
          Ctrl: in std_logic_vector(2 downto 0);
          ImmOutput: out std_logic_vector(15 downto 0));
  end component;
  component REG2
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
  end component;
  component ALU
    port( SrcA, SrcB: in std_logic_vector(15 downto 0);
          Op: in std_logic_vector(3 downto 0);
          Res: out std_logic_vector(15 downto 0);
          Zero: out std_logic);
  end component;
  component REG3
    port( WriteRegCtrlIn: in std_logic_vector(3 downto 0);
          MemRdCtrlIn, MemWrCtrlIn, RegWrSrcCtrlIn: in std_logic;
          ALUResIn: in std_logic_vector(15 downto 0);
          Reg2DataIn: in std_logic_vector(15 downto 0);
          NewPCIn: in std_logic_vector(15 downto 0);
          clk, rst: in std_logic;
          HazardCtrl: in std_logic;
          WriteRegCtrlOut: out std_logic_vector(3 downto 0);
          MemRdCtrlOut, MemWrCtrlOut, RegWrSrcCtrlOut: out std_logic;
          ALUResOut: out std_logic_vector(15 downto 0);
          Reg2DataOut: out std_logic_vector(15 downto 0);
          NewPCOut: out std_logic_vector(15 downto 0));
  end component;
  component REG4
    port( WriteRegCtrlIn: in std_logic_vector(3 downto 0);
          RegWrSrcCtrlIn: in std_logic;
          ALUResIn: in std_logic_vector(15 downto 0);
          MemDataIn: in std_logic_vector(15 downto 0);
          clk, rst: in std_logic;
          WriteRegCtrlOut: out std_logic_vector(3 downto 0);
          RegWrSrcCtrlOut: out std_logic;
          ALUResOut: out std_logic_vector(15 downto 0);
          MemDataOut: out std_logic_vector(15 downto 0));
  end component;
  component Forward
    port( ALURes, WriteBackData: in std_logic_vector(15 downto 0);
          Reg1DataOld, Reg2DataOld: in std_logic_vector(15 downto 0);
          MemWrRegCtrl, WBWrRegCtrl: in std_logic_vector(3 downto 0);
          ReadReg1Ctrl, ReadReg2Ctrl: in std_logic_vector(3 downto 0);
          Reg1DataNew, Reg2DataNew: out std_logic_vector(15 downto 0));
  end component;
  component Branch
    port( CurPCIn, NewPCFromREG2In: in std_logic_vector(15 downto 0);
          PCAdderRes: in std_logic_vector(15 downto 0);
          ZeroCtrl: in std_logic;
          JumpCtrl: in std_logic;
          NewPCOut: out std_logic_vector(15 downto 0);
          JumpCtrlOut: out std_logic;
          BranchCtrlOut: out std_logic);
  end component;
  component Hazard
    port( MemRdCtrl, MemWrCtrl: in std_logic;
          MemWrRegCtrl: in std_logic_vector(3 downto 0);
          ReadReg1Ctrl, ReadReg2Ctrl: in std_logic_vector(3 downto 0);
          MemAddr, PC: in std_logic_vector(15 downto 0);
          DataToDM: in std_logic_vector(15 downto 0);
          HazardCtrlOut: out std_logic;
          Ram1Addr, Ram2Addr: out std_logic_vector(17 downto 0);
	       Ram1Data, Ram2Data: inout std_logic_vector(15 downto 0);
          DataToIM, DataToREG4: out std_logic_vector(15 downto 0);
          Ram1OE, Ram1WE, Ram1EN, Ram2OE, Ram2WE, Ram2EN: out std_logic;
          TBRE, TSRE, DataReady: in std_logic;
          RDN, WRN: out std_logic;
          clk: in std_logic);
  end component;
  component Int
    port( IntIn: in std_logic;
          IH: in std_logic_vector(15 downto 0);
          clk, rst: in std_logic;
          IntCode: out std_logic_vector(3 downto 0);
          IntCtrl: out std_logic);
  end component;

  signal NewPCToREG1, NewPCToREG2, NewPCToREG3, NewPCToInt, PCToIM: std_logic_vector(15 downto 0);
  signal InsToREG1, InsToControl: std_logic_vector(15 downto 0);
  signal ImmToREG1, ImmToExtend: std_logic_vector(10 downto 0);
  signal HazardCtrl, BranchCtrl, IntCtrl, ZeroCtrl, JumpCtrl: std_logic;
  signal JumpCtrlToREG1, JumpCtrlToREG2: std_logic;
  signal ReadReg1CtrlToREG2, ReadReg2CtrlToREG2: std_logic_vector(3 downto 0);
  signal ReadReg1CtrlToForward, ReadReg2CtrlToForward: std_logic_vector(3 downto 0);
  signal ALUOpCtrlToREG2, ALUOpCtrlToALU, WriteRegCtrlToREG2: std_logic_vector(3 downto 0);
  signal WriteRegCtrlToREG3, WriteRegCtrlToREG4, WriteRegCtrlToRH: std_logic_vector(3 downto 0);
  signal PCSrcACtrlToREG2, PCSrcBCtrlToREG2: std_logic;
  signal PCSrcACtrlToPCAdder, PCSrcBCtrlToPCAdder: std_logic;
  signal MemRdCtrlToREG2, MemWrCtrlToREG2, RegWrSrcCtrlToREG2: std_logic;
  signal MemRdCtrlToREG3, MemWrCtrlToREG3, RegWrSrcCtrlToREG3: std_logic;
  signal MemRdCtrlToDM, MemWrCtrlToDM, RegWrSrcCtrlToREG4: std_logic;
  signal MemWrRegCtrl, WBWrRegCtrl, IntCode: std_logic_vector(3 downto 0);
  signal ALUSrcACtrlToREG2, ALUSrcBCtrlToREG2: std_logic_vector(1 downto 0);
  signal ALUSrcACtrlToALU, ALUSrcBCtrlToALU: std_logic_vector(1 downto 0);
  signal ExtCtrl: std_logic_vector(2 downto 0);
  signal Reg1DataToREG2, Reg2DataToREG2: std_logic_vector(15 downto 0);
  signal Reg1DataToForward, Reg2DataToForward: std_logic_vector(15 downto 0);
  signal Reg1DataToALU, Reg2DataToALU, Reg2DataToDM: std_logic_vector(15 downto 0);
  signal ALUSrcA, ALUSrcB, ALUResToREG3, ALUResToDM, ALUResToWBChoser: std_logic_vector(15 downto 0);
  signal PCSrcA, PCSrcB, PCAdderRes, MemDataToREG4, MemDataToWBChoser: std_logic_vector(15 downto 0);
  signal WriteBackData, ImmToREG2, ImmTOALU, RamDataToIM, IHToInt: std_logic_vector(15 downto 0);
  signal CPUClk, RegWrSrcCtrlToWBChoser: std_logic;
begin
  process(clk) begin
    --if clk='1' and clk'event then
      CPUClk <= clk;
    --end if;
  end process;
  IntCtrl <= '0';
  l(15 downto 0) <= PCToIM;
  with ALUOpCtrlToREG2 select
    dyp0 <= (6 => '0', others => '1') when "0000",
				(1 => '1', 2 => '1', others => '0') when "0001",
				(2 => '0', 5 => '0', others => '1') when "0010",
				(4 => '0', 5 => '0', others => '1') when "0011",
				(0 => '0', 3 => '0', 4 => '0', others => '1') when "0100",
				(1 => '0', 4 => '0', others => '1') when "0101",
				(1 => '0', others => '1') when "0110",
				(0 => '1', 1 => '1', 2 => '1', others => '0') when "0111",
				(others => '1') when "1000",
				(4 => '0', others => '1') when "1001",
				(3 => '0', others => '1') when "1010",
				(0 => '0', 1 => '0', others => '1') when "1011",
				(1 => '0', 2 => '0', 6 => '0', others => '1') when "1100",
				(0 => '0', 5 => '0', others => '1') when "1101",
				(1 => '0', 2 => '0', others => '1') when "1110",
				(1 => '0', 2 => '0', 3 => '0', others => '0') when "1111",
				(0 => '0', 3 => '0', others => '1') when others;

  u1: PC port map
    (NextPC=>NewPCToREG1, HazardCtrl=>HazardCtrl, IntCtrl=>IntCtrl, clk=>CPUClk, rst=>rst, CurPC=>PCToIM);
  u3: IM port map
    (RamData=>RamDataToIM, Ins=>InsToREG1, Imm=>ImmToREG1);
  u4: REG1 port map
    (InsIn=>InsToREG1, ImmIn=>ImmToREG1, NewPCIn=>NewPCToREG1, JumpCtrlIn=>JumpCtrlToREG1,
     clk=>CPUClk, rst=>rst, HazardCtrl=>HazardCtrl, IntCtrl=>IntCtrl, BranchCtrl=>BranchCtrl,
     InsOut=>InsToControl, ImmOut=>ImmToExtend, NewPCOut=>NewPCToREG2, JumpCtrlOut=>JumpCtrlToREG2);
  u5: Control port map
    (Ins=>InsToControl, ReadReg1=>ReadReg1CtrlToREG2, ReadReg2=>ReadReg2CtrlToREG2,
     WriteReg=>WriteRegCtrlToREG2, ExtCtrl=>ExtCtrl,
     PCSrcA=>PCSrcACtrlToREG2, PCSrcB=>PCSrcBCtrlToREG2,
     ALUSrcA=>ALUSrcACtrlToREG2, ALUSrcB=>ALUSrcBCtrlToREG2, ALUOp=>ALUOpCtrlToREG2,
     MemRd=>MemRdCtrlToREG2, MemWr=>MemWrCtrlToREG2, RegWrSrc=>RegWrSrcCtrlToREG2);
  u6: RegisterHeap port map--!
    (ReadReg1Ctrl=>ReadReg1CtrlToREG2, ReadReg2Ctrl=>ReadReg2CtrlToREG2, WriteRegCtrl=>WriteRegCtrlToRH,
     WriteRegData=>WriteBackData, Reg1Out=>Reg1DataToREG2, Reg2Out=>Reg2DataToREG2,
     RetPC=>NewPCToInt, IntCode=>IntCode, IntCtrl=>IntCtrl, IHOut=>IHToInt, clk=>CPUClk);
  u7: Extend port map
    (ImmInput=>ImmToExtend, Ctrl=>ExtCtrl, ImmOutput=>ImmToREG2);
  u8: REG2 port map
    (ReadReg1CtrlIn=>ReadReg1CtrlToREG2, ReadReg2CtrlIn=>ReadReg2CtrlToREG2, WriteRegCtrlIn=>WriteRegCtrlToREG2,
     PCSrcACtrlIn=>PCSrcACtrlToREG2, PCSrcBCtrlIn=>PCSrcBCtrlToREG2,
     ALUSrcACtrlIn=>ALUSrcACtrlToREG2, ALUSrcBCtrlIn=>ALUSrcBCtrlToREG2, ALUOpCtrlIn=>ALUOpCtrlToREG2,
     MemRdCtrlIn=>MemRdCtrlToREG2, MemWrCtrlIn=>MemWrCtrlToREG2, RegWrSrcCtrlIn=>RegWrSrcCtrlToREG2,
     JumpCtrlIn=>JumpCtrlToREG2, Reg1DataIn=>Reg1DataToREG2, Reg2DataIn=>Reg2DataToREG2,
     NewPCIn=>NewPCToREG2, ImmIn=>ImmToREG2, clk=>CPUClk, rst=>rst,
     IntCtrl=>IntCtrl, BranchCtrl=>BranchCtrl, HazardCtrl=>HazardCtrl,
     ReadReg1CtrlOut=>ReadReg1CtrlToForward, ReadReg2CtrlOut=>ReadReg2CtrlToForward, WriteRegCtrlOut=>WriteRegCtrlToREG3,
     PCSrcACtrlOut=>PCSrcACtrlToPCAdder, PCSrcBCtrlOut=>PCSrcBCtrlToPCAdder,
     ALUSrcACtrlOut=>ALUSrcACtrlToALU, ALUSrcBCtrlOut=>ALUSrcBCtrlToALU, ALUOpCtrlOut=>ALUOpCtrlToALU,
     MemRdCtrlOut=>MemRdCtrlToREG3, MemWrCtrlOut=>MemWrCtrlToREG3, RegWrSrcCtrlOut=>RegWrSrcCtrlToREG3,
     JumpCtrlOut=>JumpCtrl, Reg1DataOut=>Reg1DataToForward, Reg2DataOut=>Reg2DataToForward,
     NewPCOut=>NewPCToREG3, ImmOut=>ImmToALU);
  with ALUSrcACtrlToALU select
    ALUSrcA <= Reg1DataToALU when "00",
               (others=>'0') when "01",
               Reg2DataToALU when "10",
               (0=>'1', others=>'0') when "11",
					(others=>'0') when others;
  with ALUSrcBCtrlToALU select
    ALUSrcB <= Reg2DataToALU when "00",
               ImmToALU when "01",
               NewPCToREG3 when "10",
               (others=>'0') when "11",
					(others=>'0') when others;
  u9: ALU port map
    (SrcA=>ALUSrcA, SrcB=>ALUSrcB, Op=>ALUOpCtrlToALU, Res=>ALUResToREG3, Zero=>ZeroCtrl);
  with PCSrcACtrlToPCAdder select
    PCSrcA <= NewPCToREG3 when '0',
              Reg1DataToALU when '1',
				  (others=>'0') when others;
  with PCSrcBCtrlToPCAdder select
    PCSrcB <= ImmTOALU when '0',
              (others=>'0') when others;
  PCAdderRes <= PCSrcA + PCSrcB;
  u10: REG3 port map
    (WriteRegCtrlIn=>WriteRegCtrlToREG3, MemRdCtrlIn=>MemRdCtrlToREG3, MemWrCtrlIn=>MemWrCtrlToREG3, RegWrSrcCtrlIn=>RegWrSrcCtrlToREG3,
     ALUResIn=>ALUResToREG3, Reg2DataIn=>Reg2DataToALU, NewPCIn=>NewPCToREG3, clk=>CPUClk, rst=>rst, HazardCtrl=>HazardCtrl,
     WriteRegCtrlOut=>WriteRegCtrlToREG4, MemRdCtrlOut=>MemRdCtrlToDM, MemWrCtrlOut=>MemWrCtrlToDM, RegWrSrcCtrlOut=>RegWrSrcCtrlToREG4,
     ALUResOut=>ALUResToDM, Reg2DataOut=>Reg2DataToDM, NewPCOut=>NewPCToInt);
  u13: REG4 port map
    (WriteRegCtrlIn=>WriteRegCtrlToREG4, RegWrSrcCtrlIn=>RegWrSrcCtrlToREG4, ALUResIn=>ALUResToDM, MemDataIn=>MemDataToREG4, clk=>CPUClk, rst=>rst,
     WriteRegCtrlOut=>WriteRegCtrlToRH, RegWrSrcCtrlOut=>RegWrSrcCtrlToWBChoser, ALUResOut=>ALUResToWBChoser, MemDataOut=>MemDataToWBChoser);
  with RegWrSrcCtrlToWBChoser select
    WriteBackData <= ALUResToWBChoser when '0',
                     MemDataToWBChoser when '1',
							(others=>'0') when others;
  u14: Forward port map
    (ALURes=>ALUResToDM, WriteBackData=>WriteBackData, Reg1DataOld=>Reg1DataToForward, Reg2DataOld=>Reg2DataToForward,
     MemWrRegCtrl=>WriteRegCtrlToREG4, WBWrRegCtrl=>WriteRegCtrlToRH, ReadReg1Ctrl=>ReadReg1CtrlToForward, ReadReg2Ctrl=>ReadReg2CtrlToForward,
     Reg1DataNew=>Reg1DataToALU, Reg2DataNew=>Reg2DataToALU);
  u15: Branch port map
    (CurPCIn=>PCToIM, NewPCFromREG2In=>NewPCToREG3, PCAdderRes=>PCAdderRes, ZeroCtrl=>ZeroCtrl, JumpCtrl=>JumpCtrl,
     NewPCOut=>NewPCToREG1, JumpCtrlOut=>JumpCtrlToREG1, BranchCtrlOut=>BranchCtrl);
  u16: Hazard port map
    (MemRdCtrl=>MemRdCtrlToDM, MemWrCtrl=>MemWrCtrlToDM, MemWrRegCtrl=>WriteRegCtrlToREG4,
     ReadReg1Ctrl=>ReadReg1CtrlToForward, ReadReg2Ctrl=>ReadReg2CtrlToForward, MemAddr=>ALUResToDM,
     PC=>PCToIM, DataToDM=>Reg2DataToDM, HazardCtrlOut=>HazardCtrl, Ram1Addr=>Ram1Addr, Ram2Addr=>Ram2Addr,
     Ram1Data=>Ram1Data, Ram2Data=>Ram2Data, DataToIM=>RamDataToIM, DataToREG4=>MemDataToREG4,
     Ram1OE=>Ram1OE, Ram1WE=>Ram1WE, Ram1EN=>Ram1EN, Ram2OE=>Ram2OE, Ram2WE=>Ram2WE, Ram2EN=>Ram2EN,
     TBRE=>TBRE, TSRE=>TSRE, DataReady=>DataReady, RDN=>RDN, WRN=>WRN, clk=>CPUClk);
  --u17: Int port map--!
    --(IntIn=>, IH=>, clk=>CPUClk, rst=>rst, IntCode=>, IntCtrl=>);
end architecture bhv;
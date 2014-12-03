LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Hazard is
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
end entity;

architecture bhv of Hazard is
  signal DataOutBF01: std_logic_vector(15 downto 0);
begin
  DataOutBF01(15 downto 2) <= (others=>'0');
  DataOutBF01(1) <= '1' when(DataReady='1') else
                    '0';
  DataOutBF01(0) <= '1' when((TBRE and TSRE) = '1') else
                    '0';
  HazardCtrlOut <= '1' when((MemWrCtrl='1' and ((PC>="1000000000000000" and MemAddr>="1000000000000000") or (PC<"1000000000000000" and MemAddr<"1000000000000000"))) or (MemRdCtrl='1' and ((PC>="1000000000000000" and MemAddr>="1000000000000000" and PC/=MemAddr) or (PC<"1000000000000000" and MemAddr<"1000000000000000" and PC/=MemAddr))) or (MemRdCtrl='1' and (MemWrRegCtrl=ReadReg1Ctrl or MemWrRegCtrl=ReadReg2Ctrl) and MemWrRegCtrl/="1111")) else
                   '0';
  Ram1Addr(17 downto 16) <= "00";
  Ram1Addr(15 downto 0) <= MemAddr when((MemWrCtrl='1' or MemRdCtrl='1') and MemAddr>="1000000000000000") else
                           PC when(PC>="1000000000000000") else
                           (others=>'0');
  Ram2Addr(17 downto 16) <= "00";
  Ram2Addr(15 downto 0) <= MemAddr when((MemWrCtrl='1' or MemRdCtrl='1') and MemAddr<"1000000000000000") else
                           PC when(PC<"1000000000000000") else
                           (others=>'0');
  DataToIM <= Ram1Data when(PC>="1000000000000000") else
              Ram2Data when(PC<"1000000000000000");
  DataToREG4 <= DataOutBF01 when(MemAddr="1011111100000001") else
					 Ram1Data when(MemAddr>="1000000000000000") else
                Ram2Data when(MemAddr<"1000000000000000");
  Ram1EN <= '1' when ((MemWrCtrl='1' or MemRdCtrl='1') and MemAddr="1011111100000000") else
            '0';
  Ram2EN <= '0';
  process(clk, MemAddr, MemWrCtrl, MemRdCtrl, MemAddr, PC) begin
    Ram1WE <= '1';
    Ram2WE <= '1';
    Ram1OE <= '1';
    Ram2OE <= '1';
    WRN <= '1';
    RDN <= '1';
	 if(MemWrCtrl='1' and MemAddr>="1000000000000000") then
		Ram1Data <= DataToDM;
	 else
	   Ram1Data <= (others=>'Z');
	 end if;
    if(MemWrCtrl='1' and MemAddr<"1000000000000000") then
      Ram2Data <= DataToDM;
    else
      Ram2Data <= (others=>'Z');
    end if;
	 if clk='0' then
      if MemAddr="1011111100000000" and MemWrCtrl='1' then
        WRN <= '0';
	   elsif MemAddr="1011111100000000" and MemRdCtrl='1' then
		  RDN <= '0';
      elsif MemAddr>="1000000000000000" and MemWrCtrl='1' then
        Ram1WE <= '0';
      elsif MemAddr<"1000000000000000" and MemWrCtrl='1' then
        Ram2WE <= '0';
		elsif MemRdCtrl='1' and MemAddr>="1000000000000000" then
        Ram1OE <= '0';
      elsif MemRdCtrl='1' and MemAddr<"1000000000000000" then
        Ram2OE <= '0';
      end if;
		if PC>="1000000000000000" then
		  Ram1OE <= '0';
		elsif PC<"1000000000000000" then
		  Ram2OE <= '0';
		end if;
    end if;
  end process;
end architecture;
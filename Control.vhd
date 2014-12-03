library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity Control is
	  port( 
           Ins: in std_logic_vector(15 downto 0);
           ReadReg1 : out std_logic_vector(3 downto 0);
		   ReadReg2: out std_logic_vector(3 downto 0);
           WriteReg: out std_logic_vector(3 downto 0);
           ExtCtrl: out std_logic_vector(2 downto 0);
           PCSrcA : out std_logic;
		   PCSrcB: out std_logic;
           ALUSrcA : out std_logic_vector(1 downto 0);
		   ALUSrcB: out std_logic_vector(1 downto 0);
           ALUOp: out std_logic_vector(3 downto 0);
           MemRd : out std_logic;
		   MemWr : out std_logic; 
		   RegWrSrc: out std_logic
       );
end Control;

architecture Behavioral of Control is

begin
    process(Ins)
    begin
        ReadReg1 <= "1111";
        ReadReg2 <= "1111";
        WriteReg <= "1111";
        ExtCtrl <= "000";
        PCSrcA <= '0'; --potential problem
        PCSrcB <= '0'; --potential problem
        ALUSrcA <= "00";
        ALUSrcB <= "00";
        ALUOp <= "0000";
        MemRd <= '0';
        MemWr <= '0';
        RegWrSrc <= '0'; --potential problem
        case Ins(15 downto 11) is
            when "01001" => --ADDIU
                ReadReg1 <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                ReadReg2 <= "1111";
                WriteReg <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                ExtCtrl <= "001";
                PCSrcA <= '0'; --X
                PCSrcB <= '0'; --X
                ALUSrcA <= "00";
                ALUSrcB <= "01";
                ALUOp <= "0001";
                MemRd <= '0';
                MemWr <= '0';
                RegWrSrc <= '0'; 
            when "01000" => --ADDIU3
                ReadReg1 <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                ReadReg2 <= "1111";
                WriteReg <= (3=>'0', 2=>Ins(7), 1=>Ins(6), 0=>Ins(5));
                ExtCtrl <= "010";
                PCSrcA <= '0'; --X
                PCSrcB <= '0'; --X
                ALUSrcA <= "00"; 
                ALUSrcB <= "01";
                ALUOp <= "0001";
                MemRd <= '0';
                MemWr <= '0';
                RegWrSrc <= '0'; 
            when "00000" => --ADDSP3
                ReadReg1 <= "1000";
                ReadReg2 <= "1111";
                WriteReg <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                ExtCtrl <= "001";
                PCSrcA <= '0'; --X
                PCSrcB <= '0'; --X
                ALUSrcA <= "00"; 
                ALUSrcB <= "01";
                ALUOp <= "0001";
                MemRd <= '0';
                MemWr <= '0';
                RegWrSrc <= '0'; 
            when "01100" => --ADDSP & BTEQZ & MTSP &SW_RS
                case Ins(10 downto 8) is
                    when "011" =>--ADDSP
                        ReadReg1 <= "1000";
                        ReadReg2 <= "1111";
                        WriteReg <= "1000";
                        ExtCtrl <= "001";
                        PCSrcA <= '0'; --X
                        PCSrcB <= '0'; --X
                        ALUSrcA <= "00"; 
                        ALUSrcB <= "01";
                        ALUOp <= "0001";
                        MemRd <= '0';
                        MemWr <= '0';
                        RegWrSrc <= '0'; 
                    when "000" => --BTEQZ
                         ReadReg1 <= "1011";
                         ReadReg2 <= "1111";
                         WriteReg <= "1111";
                         ExtCtrl <= "001";
                         PCSrcA <= '0'; 
                         PCSrcB <= '0'; 
                         ALUSrcA <= "00";
                         ALUSrcB <= "00"; --X
                         ALUOp <= "1011";
                         MemRd <= '0';
                         MemWr <= '0';
                         RegWrSrc <= '0'; --X
                    when "100" => --MTSP
                         ReadReg1 <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                         ReadReg2 <= "1111";
                         WriteReg <= "1000"; --SP
                         ExtCtrl <= "000"; --X
                         PCSrcA <= '0'; --X
                         PCSrcB <= '0'; --X
                         ALUSrcA <= "00";
                         ALUSrcB <= "11"; 
                         ALUOp <= "0011";
                         MemRd <= '0';
                         MemWr <= '0';
                         RegWrSrc <= '0'; 
                     when "010" => --SW_RS
                         ReadReg1 <= "1000"; --SP
                        ReadReg2 <= "1010"; --RA
                        WriteReg <= "1111";
                        ExtCtrl <= "001"; 
                        PCSrcA <= '0'; --X 
                        PCSrcB <= '0'; --X
                        ALUSrcA <= "00";
                        ALUSrcB <= "01"; 
                        ALUOp <= "0001";
                        MemRd <= '0';
                        MemWr <= '1';
                        RegWrSrc <= '0'; --X
                     when others =>
                         null;
                 end case;
            when "11100" => --ADDU & SUBU
                case Ins(1 downto 0) is
                    when "01" => --ADDU
                        ReadReg1 <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                        ReadReg2 <= (3=>'0', 2=>Ins(7), 1=>Ins(6), 0=>Ins(5));
                        WriteReg <= (3=>'0', 2=>Ins(4), 1=>Ins(3), 0=>Ins(2));
                        ExtCtrl <= "000";
                        PCSrcA <= '0'; --X
                        PCSrcB <= '0'; --X
                        ALUSrcA <= "00";
                        ALUSrcB <= "00";
                        ALUOp <= "0001";
                        MemRd <= '0';
                        MemWr <= '0';
                        RegWrSrc <= '0'; 
                    when "11" => --SUBU
                        ReadReg1 <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                        ReadReg2 <= (3=>'0', 2=>Ins(7), 1=>Ins(6), 0=>Ins(5));
                        WriteReg <= (3=>'0', 2=>Ins(4), 1=>Ins(3), 0=>Ins(2));
                        ExtCtrl <= "000";
                        PCSrcA <= '0'; --X
                        PCSrcB <= '0'; --X
                        ALUSrcA <= "00";
                        ALUSrcB <= "00";
                        ALUOp <= "0110";
                        MemRd <= '0';
                        MemWr <= '0';
                        RegWrSrc <= '0'; 
                    when others =>
                        null;
                end case;
            when "11101" => --AND & CMP & JALR & JR & JRRA & MFPC & OR & SLTU
                case Ins(4 downto 0) is
                    when "01100" => --AND
                        ReadReg1 <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                        ReadReg2 <= (3=>'0', 2=>Ins(7), 1=>Ins(6), 0=>Ins(5));
                        WriteReg <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                        ExtCtrl <= "000";
                        PCSrcA <= '0'; --X
                        PCSrcB <= '0'; --X
                        ALUSrcA <= "00";
                        ALUSrcB <= "00";
                        ALUOp <= "0010";
                        MemRd <= '0';
                        MemWr <= '0';
                        RegWrSrc <= '0'; 
                    when "01010" => --CMP
                        ReadReg1 <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                        ReadReg2 <= (3=>'0', 2=>Ins(7), 1=>Ins(6), 0=>Ins(5));
                        WriteReg <= "1011";
                        ExtCtrl <= "000"; --X
                        PCSrcA <= '0'; --X
                        PCSrcB <= '0'; --X
                        ALUSrcA <= "00";
                        ALUSrcB <= "00";
                        ALUOp <= "1000";
                        MemRd <= '0';
                        MemWr <= '0';
                        RegWrSrc <= '0'; 
                    when "01101" => --OR
                        ReadReg1 <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                        ReadReg2 <= (3=>'0', 2=>Ins(7), 1=>Ins(6), 0=>Ins(5));
                        WriteReg <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                        ExtCtrl <= "000"; --X
                        PCSrcA <= '0'; --X
                        PCSrcB <= '0'; --X
                        ALUSrcA <= "00";
                        ALUSrcB <= "00";
                        ALUOp <= "0011";
                        MemRd <= '0';
                        MemWr <= '0';
                        RegWrSrc <= '0'; 
                    when "00011" => --SLTU
                        ReadReg1 <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                        ReadReg2 <= (3=>'0', 2=>Ins(7), 1=>Ins(6), 0=>Ins(5));
                        WriteReg <= "1011"; --T
                        ExtCtrl <= "000"; --X
                        PCSrcA <= '0'; --X
                        PCSrcB <= '0'; --X
                        ALUSrcA <= "00";
                        ALUSrcB <= "00";
                        ALUOp <= "1001";
                        MemRd <= '0';
                        MemWr <= '0';
                        RegWrSrc <= '0'; 
                    when "00000" => --JALR & JR & JRRA & MFPC
                        case Ins(7 downto 5) is
                            when "110" => -- JALR
                                 ReadReg1 <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                                 ReadReg2 <= "1111";
                                 WriteReg <= "1010"; --RA
                                 ExtCtrl <= "000"; --X
                                 PCSrcA <= '1'; 
                                 PCSrcB <= '1'; 
                                 ALUSrcA <= "11";
                                 ALUSrcB <= "10";
                                 ALUOp <= "1101";
                                 MemRd <= '0';
                                 MemWr <= '0';
                                 RegWrSrc <= '0'; 
                             when "000" => --JR
                                 ReadReg1 <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                                 ReadReg2 <= "1111";
                                 WriteReg <= "1111"; 
                                 ExtCtrl <= "000"; --X
                                 PCSrcA <= '1'; 
                                 PCSrcB <= '1'; 
                                 ALUSrcA <= "00"; --X
                                 ALUSrcB <= "00"; --X
                                 ALUOp <= "1010";
                                 MemRd <= '0';
                                 MemWr <= '0';
                                 RegWrSrc <= '0'; --X
                             when "001" => --JRRA
                                 ReadReg1 <= "1010"; --RA
                                 ReadReg2 <= "1111";
                                 WriteReg <= "1111"; 
                                 ExtCtrl <= "000"; --X
                                 PCSrcA <= '1'; 
                                 PCSrcB <= '1'; 
                                 ALUSrcA <= "00"; --X
                                 ALUSrcB <= "00"; --X
                                 ALUOp <= "1010";
                                 MemRd <= '0';
                                 MemWr <= '0';
                                 RegWrSrc <= '0'; --X
                             when "010" => --MFPC
                                 ReadReg1 <= "1111";
                                 ReadReg2 <= "1111";
                                 WriteReg <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                                 ExtCtrl <= "000"; --X
                                 PCSrcA <= '0';  --X
                                 PCSrcB <= '0'; --X
                                 ALUSrcA <= "01"; 
                                 ALUSrcB <= "10"; 
                                 ALUOp <= "0001";
                                 MemRd <= '0';
                                 MemWr <= '0';
                                 RegWrSrc <= '0'; 
                             when others =>
                                 null;
                         end case;
                    when others =>
                        null;
                end case;
            when "00010" => --B
                ReadReg1 <= "1111";
                ReadReg2 <= "1111";
                WriteReg <= "1111";
                ExtCtrl <= "110";
                PCSrcA <= '0'; 
                PCSrcB <= '0'; 
                ALUSrcA <= "00"; --X
                ALUSrcB <= "00"; --X
                ALUOp <= "1010";
                MemRd <= '0';
                MemWr <= '0';
                RegWrSrc <= '0'; 
            when "00100" => --BEQZ
                ReadReg1 <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                ReadReg2 <= "1111";
                WriteReg <= "1111";
                ExtCtrl <= "001";
                PCSrcA <= '0'; 
                PCSrcB <= '0'; 
                ALUSrcA <= "00";
                ALUSrcB <= "00"; --X
                ALUOp <= "1011";
                MemRd <= '0';
                MemWr <= '0';
                RegWrSrc <= '0'; --X
            when "00101" => --BNEZ
                ReadReg1 <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                ReadReg2 <= "1111";
                WriteReg <= "1111";
                ExtCtrl <= "001";
                PCSrcA <= '0'; 
                PCSrcB <= '0'; 
                ALUSrcA <= "00";
                ALUSrcB <= "00"; --X
                ALUOp <= "1100";
                MemRd <= '0';
                MemWr <= '0';
                RegWrSrc <= '0'; --X
            when "01101" => --LI
                ReadReg1 <= "1111";
                ReadReg2 <= "1111";
                WriteReg <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                ExtCtrl <= "011";
                PCSrcA <= '0'; --X 
                PCSrcB <= '0'; --X
                ALUSrcA <= "01";
                ALUSrcB <= "01"; 
                ALUOp <= "0001";
                MemRd <= '0';
                MemWr <= '0';
                RegWrSrc <= '0'; 
            when "10011" => --LW
                ReadReg1 <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                ReadReg2 <= "1111";
                WriteReg <= (3=>'0', 2=>Ins(7), 1=>Ins(6), 0=>Ins(5));
                ExtCtrl <= "001";
                PCSrcA <= '0'; --X 
                PCSrcB <= '0'; --X
                ALUSrcA <= "00";
                ALUSrcB <= "01"; 
                ALUOp <= "0001";
                MemRd <= '1';
                MemWr <= '0';
                RegWrSrc <= '1'; 
            when "10010" => --LW_SP
                ReadReg1 <= "1000"; --SP
                ReadReg2 <= "1111";
                WriteReg <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                ExtCtrl <= "001";
                PCSrcA <= '0'; --X 
                PCSrcB <= '0'; --X
                ALUSrcA <= "00";
                ALUSrcB <= "01"; 
                ALUOp <= "0001";
                MemRd <= '1';
                MemWr <= '0';
                RegWrSrc <= '1'; 
            when "11110" => --MFIH & MTIH
                case Ins(2 downto 0) is
                    when "000" => --MFIH
                        ReadReg1 <= "1001"; --IH
                        ReadReg2 <= "1111";
                        WriteReg <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                        ExtCtrl <= "000"; --X
                        PCSrcA <= '0'; --X 
                        PCSrcB <= '0'; --X
                        ALUSrcA <= "00";
                        ALUSrcB <= "11"; 
                        ALUOp <= "0001";
                        MemRd <= '0';
                        MemWr <= '0';
                        RegWrSrc <= '0'; 
                    when "001" => --MTIH
                        ReadReg1 <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                        ReadReg2 <= "1111";
                        WriteReg <= "1001"; --IH
                        ExtCtrl <= "000"; --X
                        PCSrcA <= '0'; --X 
                        PCSrcB <= '0'; --X
                        ALUSrcA <= "00";
                        ALUSrcB <= "11"; 
                        ALUOp <= "0001";
                        MemRd <= '0';
                        MemWr <= '0';
                        RegWrSrc <= '0'; 
                    when others =>
                        null;
                end case;
            when "00001" => --NOP
                ReadReg1 <= "1111"; --SP
                ReadReg2 <= "1111";
                WriteReg <= "1111";
                ExtCtrl <= "000"; --X
                PCSrcA <= '0'; --X 
                PCSrcB <= '0'; --X
                ALUSrcA <= "00"; --X
                ALUSrcB <= "00"; --X
                ALUOp <= "0000"; --X
                MemRd <= '0';
                MemWr <= '0';
                RegWrSrc <= '0'; 
            when "00110" => --SLL & SRA
                case Ins(1 downto 0) is
                    when "00" => --SLL
                        ReadReg1 <= "1111";
                        ReadReg2 <= (3=>'0', 2=>Ins(7), 1=>Ins(6), 0=>Ins(5));
                        WriteReg <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                        ExtCtrl <= "100"; 
                        PCSrcA <= '0'; --X 
                        PCSrcB <= '0'; --X
                        ALUSrcA <= "10";
                        ALUSrcB <= "01"; 
                        ALUOp <= "0100";
                        MemRd <= '0';
                        MemWr <= '0';
                        RegWrSrc <= '0'; 
                    when "11" => --SRA
                        ReadReg1 <= "1111";
                        ReadReg2 <= (3=>'0', 2=>Ins(7), 1=>Ins(6), 0=>Ins(5));
                        WriteReg <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                        ExtCtrl <= "100"; 
                        PCSrcA <= '0'; --X 
                        PCSrcB <= '0'; --X
                        ALUSrcA <= "10";
                        ALUSrcB <= "01"; 
                        ALUOp <= "0101";
                        MemRd <= '0';
                        MemWr <= '0';
                        RegWrSrc <= '0'; 
                    when others =>
                        null;
                end case;
            when "11011" => --SW
                ReadReg1 <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                ReadReg2 <= (3=>'0', 2=>Ins(7), 1=>Ins(6), 0=>Ins(5));
                WriteReg <= "1111";
                ExtCtrl <= "101"; 
                PCSrcA <= '0'; --X 
                PCSrcB <= '0'; --X
                ALUSrcA <= "00";
                ALUSrcB <= "01"; 
                ALUOp <= "0001";
                MemRd <= '0';
                MemWr <= '1';
                RegWrSrc <= '0'; --X
            when "11010" => --SW_SP
                ReadReg1 <= "1000"; --SP
                ReadReg2 <= (3=>'0', 2=>Ins(10), 1=>Ins(9), 0=>Ins(8));
                WriteReg <= "1111";
                ExtCtrl <= "001"; 
                PCSrcA <= '0'; --X 
                PCSrcB <= '0'; --X
                ALUSrcA <= "00";
                ALUSrcB <= "01"; 
                ALUOp <= "0001";
                MemRd <= '0';
                MemWr <= '1';
                RegWrSrc <= '0'; --X
            when others =>
                null;
        end case;
    end process;
end Behavioral;


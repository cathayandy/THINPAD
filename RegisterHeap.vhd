----------------------------------------------------------------------------------

----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity RegisterHeap is
	   port( 
			ReadReg1Ctrl : in std_logic_vector(3 downto 0);
			ReadReg2Ctrl: in std_logic_vector(3 downto 0);
            WriteRegCtrl: in std_logic_vector(3 downto 0);
            WriteRegData: in std_logic_vector(15 downto 0);
            clk : in std_logic;
            --rst : in std_logic;
            Reg1Out : out std_logic_vector(15 downto 0);
			Reg2Out: out std_logic_vector(15 downto 0);
          --INT ports
            RetPC: in std_logic_vector(15 downto 0);
            IntCode: in std_logic_vector(3 downto 0);
            IntCtrl: in std_logic;
            IHOut: out std_logic_vector(15 downto 0)
		);
end RegisterHeap;

architecture Behavioral of RegisterHeap is

signal R0,R1,R2,R3,R4,R5,R6,R7 : std_logic_vector(15 downto 0);
signal IH,SP,T,RA : std_logic_vector(15 downto 0);
begin
    --read register heap
    process(ReadReg1Ctrl, ReadReg2Ctrl, R0, R1, R2, R3, R4, R5, R6, R7, IH, SP, T, RA)
    begin
        Reg1Out <= (others => '0');
        Reg2Out <= (others => '0');
        case ReadReg1Ctrl is
            when "0000" =>
                Reg1Out <= R0;
            when "0001" =>
                Reg1Out <= R1;
            when "0010" =>
                Reg1Out <= R2;
            when "0011" =>
                Reg1Out <= R3;
            when "0100" =>
                Reg1Out <= R4;
            when "0101" =>
                Reg1Out <= R5;
            when "0110" =>
                Reg1Out <= R6;
            when "0111" =>
                Reg1Out <= R7;
            when "1000" =>
                Reg1Out <= SP;
            when "1001" =>
                Reg1Out <= IH;
            when "1010" =>
                Reg1Out <= RA;
            when "1011" =>
                Reg1Out <= T;
            when others =>
                null;
        end case;

            case ReadReg2Ctrl is
            when "0000" =>
                Reg2Out <= R0;
            when "0001" =>
                Reg2Out <= R1;
            when "0010" =>
                Reg2Out <= R2;
            when "0011" =>
                Reg2Out <= R3;
            when "0100" =>
                Reg2Out <= R4;
            when "0101" =>
                Reg2Out <= R5;
            when "0110" =>
                Reg2Out <= R6;
            when "0111" =>
                Reg2Out <= R7;
            when "1000" =>
                Reg2Out <= SP;
            when "1001" =>
                Reg2Out <= IH;
            when "1010" =>
                Reg2Out <= RA;
            when "1011" =>
                Reg2Out <= T;
            when others =>
                null;
        end case;
    end process;

    --write register heap
    process(clk)
    begin
        if(clk'event and clk='0') then
            case WriteRegCtrl is
                when "0000" =>
                    R0 <= WriteRegData;
                when "0001" =>
                    R1 <= WriteRegData;
                when "0010" =>
                    R2 <= WriteRegData;
                when "0011" =>
                    R3 <= WriteRegData;
                when "0100" =>
                    R4 <= WriteRegData;
                when "0101" =>
                    R5 <= WriteRegData;
                when "0110" =>
                    R6 <= WriteRegData;
                when "0111" =>
                    R7 <= WriteRegData;
                when "1000" =>
                    SP <= WriteRegData;
                when "1001" =>
                    IH <= WriteRegData;
                when "1010" =>
                    RA <= WriteRegData;
                when "1011" =>
                    T <= WriteRegData;
                when others =>
                    null;
            end case;
        end if;
    end process;
end Behavioral;

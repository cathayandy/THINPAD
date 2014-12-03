library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity ALU is
	port(
		SrcA : in  std_logic_vector(15 downto 0);
		SrcB : in std_logic_vector(15 downto 0);
		Op : in std_logic_vector(3 downto 0);
		Res : out std_logic_vector(15 downto 0);
		Zero : out std_logic
	);

end ALU;

architecture Behavioral of ALU is
 begin
 process(SrcA, SrcB, Op)
    begin
        Res <= (others => '0');
        Zero <= '0';
        case Op is
            when "0001" =>
                Res <= SrcA + SrcB;
            when "0010" =>
                Res <= SrcA and SrcB;
            when "0011" =>
                Res <= SrcA or SrcB;
            when "0100" =>
                Res <= To_stdLogicVector( To_bitVector(SrcA) sll conv_integer(SrcB));
            when "0101" =>
                Res <=  To_stdLogicVector( To_bitVector(SrcA) sra conv_integer(SrcB));
            when "0110" =>
                Res <= SrcA - SrcB;
            when "1000" =>
                if (SrcA = SrcB) then
                    Res <= (others => '0');
                else
                    Res <= (0 => '1', others => '0');
                end if;
            when "1001" => 
                if (SrcA < SrcB) then
                    Res <= (0 => '1', others => '0');
                else
                    Res <= (others => '0');
                end if;
            when "1010" =>
                Zero <= '1';
            when "1011" =>
                if(SrcA = "0000000000000000") then
                    Zero <= '1';
                else
                    Zero <= '0';
                end if;
            when "1100" =>
                if(SrcA = "0000000000000000") then
                    Zero <= '0';
                else
                    Zero <= '1';
                end if;
            when "1101" =>
                Res <= SrcA + SrcB;
                Zero <= '1';
            when others =>
                Res <= (others => '0');
                Zero <= '0';
        end case;
    end process;
end Behavioral;


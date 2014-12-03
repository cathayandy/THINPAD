library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity Extend is
    Port ( ImmInput : in std_logic_vector(10 downto 0)  ;
           Ctrl : in  std_logic_vector(2 downto 0);
           ImmOutput : out  std_logic_vector(15 downto 0)
       );
end Extend;

architecture Behavioral of Extend is

begin
	process(ImmInput, Ctrl)
    begin
        ImmOutput <= (others => '0');
        case Ctrl is
            when "001" =>
                ImmOutput(15 downto 8) <= (others => ImmInput(7));
                ImmOutput(7 downto 0) <= ImmInput(7 downto 0);
            when "010" => 
                ImmOutput(15 downto 4) <= (others => ImmInput(3));
                ImmOutput(3 downto 0) <= ImmInput(3 downto 0);
            when "011" => 
                ImmOutput(15 downto 8) <= (others => '0');
                ImmOutput(7 downto 0) <= ImmInput(7 downto 0);
            when "100" => 
                ImmOutput(15 downto 4) <= (others => '0');
                if (ImmInput(4 downto 2) = "000") then
                    ImmOutput(3 downto 0) <= "1000";
                else
                    ImmOutput(3) <= '0';
                    ImmOutput(2 downto 0) <= ImmInput(4 downto 2);
                end if;
            when "101" => 
                ImmOutput(15 downto 5) <= (others => ImmInput(4));
                ImmOutput(4 downto 0) <= ImmInput(4 downto 0);
            when "110" => 
                ImmOutput(15 downto 11) <= (others => ImmInput(10));
                ImmOutput(10 downto 0) <= ImmInput(10 downto 0);
            when others =>
                ImmOutput(15 downto 0) <= (others => '0');
			end case;
    end process;

end Behavioral;


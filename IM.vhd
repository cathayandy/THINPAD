LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity IM is
port( RamData: in std_logic_vector(15 downto 0);
      Ins: out std_logic_vector(15 downto 0);
      Imm: out std_logic_vector(10 downto 0));
end entity;

architecture bhv of IM is begin
  Ins <= RamData;
  Imm <= RamData(10 downto 0);
end architecture;
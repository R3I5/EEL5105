library ieee;
use IEEe.std_logic_1164.all;

entity decod7seg is
port (F: in std_logic_vector(3 downto 0);
		S: out std_logic_vector(6 downto 0)
		);
end decod7seg;
architecture decod of decod7seg is
begin

S <= "1000000" when F = "0000" else--'0'
  "1111001" when F = "0001" else--'1'
  "0100100" when F = "0010" else--'2'
  "0110000" when F = "0011" else--'3'
  "0011001" when F = "0100" else--'4'
  "0010010" when F = "0101" else--'5'
  "0000010" when F = "0110" else--'6'
  "1111000" when F = "0111" else--'7'
  "0000000" when F = "1000" else--'8' 	
  "0010000" when F = "1001" else--'9' 	
  "0001000" when F = "1010" else--'A'
  "0000011" when F = "1011" else--'B'
  "1000100" when F = "1100" else--'C'
  "0100001" when F = "1101" else--'D'
  "0000110" when F = "1110" else--'E'
  "0001110" when F = "1111"; --'F' 
end decod;
 
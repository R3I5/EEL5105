library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity count is
port (	EN,RST,CLK: in std_logic;
	s: out std_logic_vector (3 downto 0)	-- enable ativo uma vez a cada segundo
);
end count;

architecture circuito of count is

signal contador: std_logic_vector(3 downto 0);

begin

	process(EN,RST,CLK,contador)
	begin
			if RST = '0' then
					contador <= "0000";
			elsif CLK'event and CLK= '1' then
				if EN = '1' then	
					contador <= contador+1;
				end if;
			end if;
			s <= contador;
		end process;

end circuito;
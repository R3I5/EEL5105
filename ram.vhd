library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram is
port( 	clk,we:		in	std_logic;
	addr:		in	std_logic_vector(3 downto 0);
	datain:		in	std_logic_vector(4 downto 0);
	dataout:	out	std_logic_vector(4 downto 0)	
	);
end ram;

architecture arch1 of ram is

type memtype is array (0 to 15) of std_logic_vector(4 downto 0);
signal memoria:	memtype;

begin

	process(clk,we,addr,datain)
        begin
        	if clk'event and clk='1' then
                	if we='1' then
				memoria(to_integer(unsigned(addr))) <= datain;
			end if;
		end if;
        end process;

dataout <= memoria(to_integer(unsigned(addr)));

end arch1;      





















































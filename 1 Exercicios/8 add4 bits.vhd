library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;


entity add4 is

	port(
		inputA_port	: 	in	unsigned(3 downto 0);
		inputB_port	: 	in	unsigned(3 downto 0);
		sel_add	    :	in	std_logic;
		output_port	:	out	unsigned(3 downto 0)
	);
		
end add4;


architecture behavioral of add4 is 
begin

	output_port <=	inputA_port + inputB_port when sel_add = '1' else
	inputA_port - inputB_port;

end behavioral;

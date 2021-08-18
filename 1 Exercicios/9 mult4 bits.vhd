library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;


entity mult4 is

	port(
		inputA_port, inputB_port: in integer range 11 downto 0;
		output_port				: out integer range 11 downto 0;
		sel_modo				: in std_logic);
		
end mult4;


architecture behavioral of mult4 is 
begin

	output_port <=	inputA_port * inputB_port when sel_add = '1' else
	inputA_port / inputB_port;

end behavioral;

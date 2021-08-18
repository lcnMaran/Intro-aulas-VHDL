--Exemplo.
--Esse será um OR REDUTOR. Ele pega todas as entradas e faz um OR entre todas.
--Exemplo que usará GENERIC e FOR.
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;

--declaramos a entidade
entity or_exemplo4 is

	port(
		input_port	: in  std_logic_vector(3 downto 0);
		output_port	: out std_logic
	);
end or_exemplo4;


architecture behavioral of or_exemplo4 is
begin

	with input_port select
	output_port <=  '0' when "0000", '1' when others;
	
end behavioral;
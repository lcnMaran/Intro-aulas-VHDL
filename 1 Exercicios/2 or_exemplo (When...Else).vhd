--Exemplo.
--Esse será um OR REDUTOR. Ele pega todas as entradas e faz um OR entre todas.
--Exemplo que usará GENERIC e FOR.
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;

--declaramos a entidade
entity or_exemplo2 is

	port(
		input_port	: in  std_logic_vector(3 downto 0);
		output_port	: out std_logic
	);
end or_exemplo2;


architecture behavioral of or_exemplo2 is
begin

	output_port <=  '0' when input_port = "0000" else '1';
	
end behavioral;
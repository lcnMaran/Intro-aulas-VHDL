--Exemplo.
--Esse será um OR REDUTOR. Ele pega todas as entradas e faz um OR entre todas.
--Exemplo que usará GENERIC e FOR.
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;

--declaramos a entidade
entity or_exemplo3 is

	port(
		input_port	: in  std_logic_vector(3 downto 0);
		output_port	: out std_logic
	);
end or_exemplo3;


architecture behavioral of or_exemplo3 is
begin

	process(input_port) begin
	case input_port is
		when "0000" => output_port <= '0';
		when others => output_port <= '1';
	end case;
	end process;
	
end behavioral;
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
	
--declaramos a entidade
ENTITY decode3x8 IS

	PORT(
		input_port	: 	IN	std_logic_vector(2 DOWNTO 0);
		output_port	:	OUT	std_logic_vector(7 DOWNTO 0)
	);
	
END decode3x8;


ARCHITECTURE behavioral OF decode3x8 IS
BEGIN


	PROCESS(input_port)
	BEGIN
		if input_port = "000" then
			output_port <= "00000001";
			
		elsif input_port = "001" then
			output_port <= "00000010";
			
		elsif input_port = "010" then
			output_port <= "00000100";
			
		elsif input_port = "011" then
			output_port <= "00001000";
			
		elsif input_port = "100" then
			output_port <= "00010000";
			
		elsif input_port = "101" then
			output_port <= "00100000";
			
		elsif input_port = "110" then
			output_port <= "01000000";
			
		elsif input_port = "111" then
			output_port <= "10000000";
			
		else
			output_port <= "UUUUUUUU";
			
		end if;
	END PROCESS;



END behavioral;

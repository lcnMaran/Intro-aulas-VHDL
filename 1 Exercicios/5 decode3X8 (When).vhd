-- Exemplo de decod. 3x8
-- Modificado : 20/07/2021

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY decode3x8 IS

	PORT(  
		din	 : IN  std_logic_vector(7 downto 0);
		S	 : IN  std_logic_vector(2 downto 0);
		Dout : OUT std_logic
	);
	
END decode3x8;


ARCHITECTURE behavioral OF decode3x8 IS
BEGIN

	WITH S SELECT
		Dout <= din(0) when "000",
			    din(1) when "001",
			    din(2) when "010",
				din(3) when "011",
			    din(4) when "100",
				din(5) when "101",
			    din(6) when "110",
			    din(7) when "111",
			    'Z'    when others;
			
END behavioral; --Arch
-------------------------------------------------------------
--Laço While
--aula 3
-------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;


ENTITY ShiftReg IS

    PORT(
		Q_out          : OUT std_logic;
		in_D, clk, rst :  IN std_logic
	);
	
END ShiftReg;


ARCHITECTURE behav OF ShiftReg IS

	SIGNAL ShiftReg_8 : std_logic_vector(7 DOWNTO 0);
	VARIABLE j : integer := 8;
	
BEGIN

	Q_out <= ShiftReg_8(7);
	
	PROCESS(in_D, clk, rst)
	BEGIN
			
		if rst = '1' then
			Q_out <= "00000000";
		
			while i < j
			elsif clk'event and clk = '1' then --elsif (rising_edge(clk)) pag.6
 
			for i in 7 downto 0 loop
				Q_out(0) <= in_D ;  
				Q_out(7 downto 1) <= Q_out(6 downto 0);
			end loop;
		end if;	
	END PROCESS;
	
END behav; --Fim laço behav

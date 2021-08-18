LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;


ENTITY ShiftReg IS

    PORT(
		in_D : IN  std_logic;
		clk  : IN  std_logic;
		rst  : IN  std_logic;
		Q_out: OUT std_logic
	);
	
END ShiftReg;


ARCHITECTURE behav OF ShiftReg IS

	SIGNAL ShiftReg_8 : std_logic_vector(7 DOWNTO 0);
	
BEGIN
	
	PROCESS(in_D, clk, rst)
	BEGIN
			
		if rst = '1' then
			Q_out <= "00000000";
		
		elsif clk'event and clk = '1' then --elsif (rising_edge(clk)) pag.6
 			Q_out(0) <= in_D ;
			for i in 7 downto 0 loop
				Q_out(7 downto 1) <= Q_out(6 downto 0);
			end loop;
		end if;	
		
	END PROCESS;
	
	Q_out <= ShiftReg_8(7);
	
	
END behav; --Fim laço behav

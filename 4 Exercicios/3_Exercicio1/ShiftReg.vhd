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

	SIGNAL ShiftReg : std_logic_vector(7 DOWNTO 0);
	
BEGIN
	
	PROCESS(clk, rst)
	BEGIN
			
		if rst = '1' then
			ShiftReg <= (others=>'0');
		
		elsif clk'event and clk = '1' then --elsif (rising_edge(clk)) pag.6
 			ShiftReg(0) <= in_D ;
			for i in 7 downto 0 loop
				ShiftReg(7 downto 1) <= ShiftReg(6 downto 0);
			end loop;
		end if;	
		
	END PROCESS;
	
	Q_out <= ShiftReg(7);
	
	
END behav; --Fim laço behav

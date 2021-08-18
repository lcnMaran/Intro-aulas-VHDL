LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY shiftReg IS
	PORT(
		CLK      :  IN std_logic;  		  --Clock
		RST		 :  IN std_logic := '0';  --Reset
        data_IN  :  IN std_logic;  		  --Entrada de dados
        data_OUT : OUT std_logic          --Saída de dados
    );
END shiftReg;


ARCHITECTURE behavior OF shiftReg IS

	SIGNAL ShiftRegister : std_logic_vector (15 downto 0);  
	
BEGIN
	
	PROCESS(CLK, RST)  
	BEGIN  
		if (RST = '1') then  
			ShiftRegister <= (others => '0');
		
		elsif (CLK'event and CLK='1') then
			ShiftRegister(0) 	 	   <= data_IN;  
			ShiftRegister(15 downto 1) <= ShiftRegister(14 downto 0);
		end if;
	END PROCESS;  
	
	data_OUT <= ShiftRegister(0);
	
END ARCHITECTURE behavior;
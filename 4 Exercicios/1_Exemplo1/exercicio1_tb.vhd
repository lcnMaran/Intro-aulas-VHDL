LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

LIBRARY work;
USE work.ALL;


--declaramos a entidade
ENTITY exercicio1_tb IS
END exercicio1_tb;


--a arquitetura
ARCHITECTURE behavior OF exercicio1_tb IS

	------------------------Não Mexer------------------------------
	signal clock 		   : std_logic := '0';
	signal estimulo_vector : std_logic_vector(15 downto 0) := x"A4B2";
	signal estimulo        : std_logic;
	
	----------------------------Mexer------------------------------
	--declarar sinais para ligar a entidade aqui.
	SIGNAL ENTRADA : std_logic;
	SIGNAL RESET   : std_logic := '0';
	SIGNAL SAIDA   : std_logic;
	
	COMPONENT shiftReg
		PORT(
			CLK      :  IN std_logic;  --Clock
			RST		 :  IN std_logic;  --Reset
			data_IN  :  IN std_logic;  --Entrada de dados
			data_OUT : OUT std_logic   --Saída de dados
		);
	END COMPONENT shiftReg;

BEGIN

	------------------------Não Mexer------------------------------
	--vamos criar um estímulo. duas partes. uma, rodar o vetor e a outra gerar o sinal "estimulo"
	--que deve ser ligado ao shift register
	estimulo_vector <= estimulo_vector(14 downto 0) & estimulo_vector(15) when rising_edge(clock);
	estimulo        <= estimulo_vector(15);

	----------------------------Mexer------------------------------
	
	--colocar o componente do seu ShiftRegister aqui.
	DUT : shiftReg
	-- PORT MAP(CLOCK, RESET, ENTRADA, SAIDA);
		PORT MAP(
			CLK      => CLOCK,    --Clock
			RST		 => RESET,    --Reset
			data_IN  => ENTRADA,  --Entrada de dados
			data_OUT => SAIDA     --Saída de dados
        );
		
		
	--gerar sinal de relógio chamado 'clock' aqui.
	CLOCK <= not CLOCK after 10 ns;
	
	PROCESS(CLOCK, RESET)
		BEGIN
			if RESET = '1' then
				SAIDA <= '0';
			elsif CLOCK'event and CLOCK = '1' then
				ENTRADA <= estimulo;
			end if;
	END PROCESS;
	
	
	
		
END ARCHITECTURE behavior;				
		
		
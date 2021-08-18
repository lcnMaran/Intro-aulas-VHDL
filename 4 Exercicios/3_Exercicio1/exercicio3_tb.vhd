LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

LIBRARY work;
USE work.ALL;


--declaramos a entidade
ENTITY exercicio3_tb IS
END exercicio3_tb;

--a arquitetura
ARCHITECTURE sim OF exercicio3_tb IS

	------------------------Não Mexer------------------------------
	SIGNAL clock 		   : std_logic := '0';
	SIGNAL estimulo_vector : std_logic_vector(15 DOWNTO 0) := x"A4B2";
	SIGNAL estimulo        : std_logic;
	
	----------------------------Mexer------------------------------
	--declarar sinais para ligar a entidade aqui.
	--ENTRADAS
	SIGNAL sig_RST : std_logic := '0'; 
	SIGNAL sig_IN  : std_logic := '0';
	--SAIDAS
	SIGNAL sig_OUT : std_logic := '0';
	
	
	COMPONENT ShiftReg
		PORT(
			in_D : IN  std_logic;
			clk  : IN  std_logic;
			rst  : IN  std_logic;
			Q_out: OUT std_logic
		);
	END COMPONENT;
	
BEGIN

	------------------------Não Mexer------------------------------
	--vamos criar um estímulo. duas partes. uma, rodar o vetor e a outra gerar o sinal "estimulo"
	--que deve ser ligado ao shift register
	estimulo_vector <= estimulo_vector(14 DOWNTO 0) & estimulo_vector(15) WHEN rising_edge(clock);
	estimulo        <= estimulo_vector(15);

	----------------------------Mexer------------------------------
	DUT : ShiftReg
	PORT MAP(sig_IN, CLOCK, sig_RST, sig_OUT);
		
		
	--gerar sinal de relógio chamado 'clock' aqui.
	CLOCK <= not CLOCK after 10 ns;
	
	PROCESS(CLOCK, sig_RST)
		BEGIN
			if sig_RST = '1' then
				sig_OUT <= '0';
			elsif CLOCK'event and CLOCK = '1' then
				sig_IN <= estimulo;
			end if;
	END PROCESS;
	

END sim;				
		
		
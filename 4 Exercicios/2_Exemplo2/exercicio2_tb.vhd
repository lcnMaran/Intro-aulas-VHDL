LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;


LIBRARY work;
USE work.ALL;


ENTITY exercicio2_tb IS
END exercicio2_tb;


ARCHITECTURE behavioral OF exercicio2_tb IS

	------------------------Não Mexer------------------------------
	SIGNAL clock 		   : std_logic := '0';
	SIGNAL estimulo_vector : std_logic_vector(15 DOWNTO 0) := x"A4B2";
	SIGNAL estimulo        : std_logic;
	
	----------------------------Mexer------------------------------
	--declarar sinais para ligar a entidade aqui.
	SIGNAL ENTRADA : std_logic;
	SIGNAL RESET   : std_logic := '0';
	SIGNAL ENABLE  : std_logic := '1';
	SIGNAL SAIDA   : std_logic;

	SIGNAL Q_A, Q_B, Q_C : std_logic_vector(7 downto 0);
	
	COMPONENT shiftReg2
		PORT(
			CLK      :  IN std_logic;  		 -- Clock nos 3 shift
			RST		 :  IN std_logic := '0'; -- Reset tbm igual nos 3 shift
			D        :  IN std_logic; 	     -- Entrada de dados
			EN       :  IN std_logic := '1'; -- Enable
			Q		 : OUT std_logic         -- Saída de dados
		);
	END COMPONENT shiftReg2;
	
BEGIN

	------------------------Não Mexer------------------------------
	--vamos criar um estímulo. duas partes. uma, rodar o vetor e a outra gerar o sinal "estimulo"
	--que deve ser ligado ao shift register
	estimulo_vector <= estimulo_vector(14 DOWNTO 0) & estimulo_vector(15) when rising_edge(clock);
	estimulo        <= estimulo_vector(15);

	----------------------------Mexer------------------------------

	--colocar o componente do seu ShiftRegister aqui.
	DUT : shiftReg2
	PORT MAP(CLOCK, RESET, ENTRADA, ENABLE, SAIDA);


	--gerar sinal de relógio chamado 'clock' aqui.
	CLOCK <= not CLOCK after 10 ns;
	
	ENTRADA <= estimulo;
	
	PROCESS(CLOCK, RESET, ENABLE)
	BEGIN
		if RESET = '1' then
			q_a <= x"00"; --x na frende do vetor é HEXA.
			q_b <= (others=>'0'); --jeito de zerar algo sem saber tamanho.
			q_c <= (others=>'0');
		elsif CLOCK'event and CLOCK = '1' then
			if ENABLE = '1' then
				--jeito 1
				q_a(0) <= ENTRADA;
				q_a(7 downto 1) <= q_a(6 downto 0);
				--jeito 2: apimentado. igual o jeito 1, mas com uma
				--constante para o tamanho.
				q_b(0) <= ENTRADA;
				q_b(q_b'high downto 1) <= q_b(q_b'high-1 downto 0);
				--jeito 3
				q_c <= q_c(q_c'high-1 downto 0) & ENTRADA;
			end if;
		end if;
	END PROCESS;  
	
		
END ARCHITECTURE behavioral;				
		
		

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

LIBRARY work;
USE work.ALL;
	

ENTITY exercicio5_tb IS
END exercicio5_tb;


ARCHITECTURE sim OF exercicio5_tb IS

	----------------------------Mexer------------------------------
	--declarar sinais para ligar a entidade aqui.
	SIGNAL clock1		: std_logic := '0';
	SIGNAL sig_we 	   	: std_logic := '1';
	SIGNAL sig_in_out  	: std_logic := '0';
	SIGNAL sig_address 	: std_logic := '0';
	
	
	COMPONENT RAM3
		PORT(
			ram_address :    IN std_logic_vector(15 DOWNTO 0);		-- Address
			clk 		:    IN std_logic := '0';					-- Clock
			ram_we    	:    IN std_logic := '0'; 					-- Write enable
			ram_in_out  : INOUT std_logic_vector(7 DOWNTO 0)		-- Dados in/out
		);
	END COMPONENT;
	
BEGIN

	----------------------------Mexer------------------------------

	--gerar sinal de relógio
	clock1 <= not clock1 after 10 ns; --cria o nosso relógio.
	
	--colocar o componente da RAM aqui.
	
	
	--Criar um processo para andar com endereço e dado. Exemplo abaixo.
	--trocar we pelo sinal de gravação escolhido.
	PROCESS
	BEGIN
		sig_address     <= (others=>'0');
		sig_in_out  	<= (others=>'0');
		sig_we       	<= '0';
		--exemplo escrita
		sig_address     <= x"2"; --ajustar para o tamanho certo de vetor.
		sig_in_out  <= x"AA";
			sig_we       <= '1';
			wait for 30 ns;
			sig_we       <= '0';
		--exemplo leitura
		sig_address     <= x"2";
			wait for 30 ns;
		wait;
	END PROCESS;


	DUT : RAM3
		PORT MAP(
			ram_address => sig_address,
			clk 		=> clock1,
			ram_we    	=> sig_we,
			ram_in_out  => sig_in_out
		);

END sim;				
		
		
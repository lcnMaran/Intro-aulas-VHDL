--                         SIMULAÇÃO
--Na simulação, foi forçado os pinos de entrada do decodificador
--igual ao exemplo do portal embarcados sobre tutorial ModelSim pasta aula 2
--
--Primeiro simu entrada 011 = 3º pino do decod
--Segunda simu entrada  101 = 5º pino do decod (fotos anexo)

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

LIBRARY work;
USE work.all;


ENTITY decode3x8_tbench IS
END decode3x8_tbench;

ARCHITECTURE sim OF decode3x8_tbench IS

	--Esses são os sinais dos pinos do decod3x8
	SIGNAL signal_input_port	: std_logic_vector(2 DOWNTO 0);
	SIGNAL signal_output_port	: std_logic_vector(7 DOWNTO 0);

	COMPONENT decode3x8
		port(
			input_port  : in  std_logic_vector(2 downto 0);
			output_port : out std_logic_vector(7 downto 0)
		);
	END COMPONENT;

BEGIN  
	DUT : decode3x8
		PORT MAP(
			input_port  => signal_input_port,
			output_port => signal_output_port
		);

END sim;
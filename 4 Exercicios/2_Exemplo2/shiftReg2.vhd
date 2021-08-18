LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;


ENTITY shiftReg2 IS
	PORT(
		CLK      :  IN std_logic;  		 -- Clock nos 3 shift
		RST		 :  IN std_logic := '0'; -- Reset tbm igual nos 3 shift
        D        :  IN std_logic; 	     -- Entrada de dados
        EN       :  IN std_logic := '1'; -- Enable
		Q		 : OUT std_logic         -- Saída de dados
    );
END shiftReg2;


ARCHITECTURE behavior OF shiftReg2 IS

	SIGNAL Q_A, Q_B, Q_C : std_logic_vector(7 downto 0);
	
BEGIN
	
	PROCESS(CLK, RST, EN)
	BEGIN
		if rst = '1' then
			q_a <= x"00"; --x na frende do vetor é HEXA.
			q_b <= (others=>'0'); --jeito de zerar algo sem saber tamanho.
			q_c <= (others=>'0');
		elsif clk'event and clk = '1' then
			if en = '1' then
				--jeito 1
				q_a(0) <= d;
				q_a(7 downto 1) <= q_a(6 downto 0);
				--jeito 2: apimentado. igual o jeito 1, mas com uma
				--constante para o tamanho.
				q_b(0) <= d;
				q_b(q_b'high downto 1) <= q_b(q_a'high-1 downto 0);
				--jeito 3
				q_c <= q_c(q_c'high-1 downto 0) & d;
			end if;
		end if;
	END PROCESS;  
	
END ARCHITECTURE behavior;
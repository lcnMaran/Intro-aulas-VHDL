LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

LIBRARY work;
USE work.all;
	
	
ENTITY RAM1_tb IS
END RAM1_tb;

ARCHITECTURE behavioral OF RAM1_tb IS

	COMPONENT RAM1
		PORT(
			ram_input  : IN  std_logic_vector(7 downto 0);
			ram_output : OUT std_logic_vector(7 downto 0);
			ram_address: IN  std_logic_vector(7 downto 0);
		
			clk, we    :  IN  std_logic := '0'
        );
    END COMPONENT;

	TYPE RAM_TYPE IS ARRAY (7 DOWNTO 0) OF std_logic_vector(7 DOWNTO 0);
	SIGNAL rom : RAM_TYPE := (
		x"AA",
		x"55",
		x"10",
		x"16",
		x"44",
		x"00",
		x"FF",
		x"FC"
	);
	
	signal sig_CLK         : std_logic := '0';
	signal sig_WE          : std_logic := '0';
	signal sig_ROM_INPUT   : std_logic_vector(7 downto 0) := (others => '0');
	signal sig_ROM_OUTPUT  : std_logic_vector(7 downto 0) := (others => '0');
	signal sig_ROM_ADDRESS : std_logic_vector(7 downto 0) := (others => '0');
	
   
BEGIN
	DUT : RAM1
	PORT MAP(
		CLK 		=> sig_CLK,
		WE 		    => sig_WE,
		RAM_ADDRESS => sig_ROM_ADDRESS,
		RAM_INPUT 	=> sig_ROM_INPUT,
		RAM_OUTPUT 	=> sig_ROM_OUTPUT
	);

	sig_CLK <= not sig_CLK after 10 ns;
	
	PROCESS(sig_CLK) 
	BEGIN   
		if sig_CLK'event and sig_CLK = '1' then
			if sig_WE = '1' then
				rom(to_integer(unsigned(sig_ROM_ADDRESS))) <= sig_ROM_INPUT;
			end if;
		end if;
	END PROCESS;
	
END behavioral;
		   
	
	
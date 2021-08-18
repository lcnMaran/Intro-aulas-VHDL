LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;


ENTITY 33RAM IS

    PORT(
		ram_oe 		:    IN std_logic := '0';		
		clk 		:    IN std_logic := '0';
		ram_we    	:    IN std_logic := '0'; 
		rst 		:    IN std_logic := '0';
		ale_i		: 	 IN std_logic := '0';
		ram_in_out  : INOUT std_logic_vector(7 DOWNTO 0)	-- Dados in/out
	);
	
END 33RAM;


ARCHITECTURE behavioral OF 33RAM IS
		
	TYPE ram_t IS ARRAY 7 DOWNTO 0 OF std_logic_vector(7 DOWNTO 0);
	SIGNAL ram_sig 	: ram_t := (OTHERS =>(OTHERS => '0'));
	SIGNAL addr_s	: std_logic_vector(2 DOWNTO 0);
	SIGNAL data_o_s	: std_logic_vector(7 DOWNTO 0);
	--SIGNAL ram_address: std_logic_vector(7 DOWNTO 0);
	--SIGNAL ram_output : std_logic_vector(7 DOWNTO 0);


BEGIN

	PROCESS(all)
	BEGIN		
		if rising_edge(clk) then
			if ale_i = '1' then
				add_s <= ram_in_out(2 downto 0);
			end if;
		end if;
	END PROCESS;
	
	PROCESS(all)
	BEGIN		
		if rising_edge(clk) then
			data_o_s <= ram_sig(to_integer(unsigned(addr_s));	
		end if;
	END PROCESS;

	PROCESS(all)
	BEGIN		
		if rising_edge(clk) then
			if ale_i = 0 and ram_we = '1' then	
				ram_sig(to_integer(unsigned(addr_s)) <= ram_in_out;
			end if;
		end if;
	END PROCESS;
	
END behavioral;
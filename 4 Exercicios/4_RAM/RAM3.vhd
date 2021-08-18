LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;


ENTITY RAM3 IS

    PORT(
		ram_address :    IN std_logic_vector(15 DOWNTO 0);		-- Address
		clk 			:    IN std_logic := '0';						-- Clock
		ram_we    	:    IN std_logic := '0'; 						-- Write enable
		ram_in_out  : INOUT std_logic_vector(7 DOWNTO 0)		-- Dados in/out
	);
	
END RAM3;


ARCHITECTURE behavioral OF RAM3 IS
		
	TYPE vector_of_vector IS ARRAY (15 DOWNTO 0) OF std_logic_vector(7 DOWNTO 0);
	CONSTANT ram : vector_of_vector := (
				x"AA",
				x"55",
				x"10",
				x"16",
				x"44",
				x"00",
				x"FF",
				x"FC"
	);
	--SIGNAL ram_address: std_logic_vector(7 DOWNTO 0);
	--SIGNAL ram_output : std_logic_vector(7 DOWNTO 0);


BEGIN


	PROCESS(clk)
	BEGIN		
		
		if clk'event and clk = '1' then
			if ram_we = '1' then
				ram_address <= ram_in_out;
				ram(ram_address) <= ram_in_out;
			elsif ram_we = '0' then
				ram_in_out <= ram(ram_address);
			end if;
		end if;
		
	END PROCESS;
	
		
END behavioral;
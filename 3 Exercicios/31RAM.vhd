-------------------------------------------------------------
--Memória RAM com endereço de IN/OUT + porta de IN/OUT.
--Aula 3
--Ref: Notas de aula, slides..
--Ref: https://ufsj.edu.br/portal2-repositorio/File/nepomuceno/fpga-vhdl/cap03.pdf
--Ref: http://paginapessoal.utfpr.edu.br/erig/logica-reconfiguravel/sync_ram.vhd/view
-------------------------------------------------------------

library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;


entity 31RAM is

    port(
		ram_input  :  in  std_logic_vector(7 downto 0);
		ram_output : out  std_logic_vector(7 downto 0);
		ram_address:  in  std_logic_vector(7 downto 0);
		
		clk, we        :  in  std_logic := '0'
	);
	
end 31RAM;


architecture behavioral of 31RAM is
		
	TYPE RAM_TYPE IS ARRAY (7 DOWNTO 0) OF std_logic_vector(7 DOWNTO 0);
	SIGNAL ram : RAM_TYPE := (
		x"AA",
		x"55",
		x"10",
		x"16",
		x"44",
		x"00",
		x"FF",
		x"FC"
	);
			

begin

	process(clk)
	begin		
		if clk'event and clk = '1' then
			if we = '1' then
				ram(to_integer(unsigned(ram_address))) <= ram_input;
			end if;
		end if;
	end process;
		
	ram_output <= ram(to_integer(unsigned(ram_address)));
		
end behavioral;
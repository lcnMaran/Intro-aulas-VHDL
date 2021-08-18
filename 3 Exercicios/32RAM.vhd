-------------------------------------------------------------
--Memória RAM com uma porta de dados de IN/OUT.
--Aula 3
--Ref: Notas de aula, slides..
--Ref: https://ufsj.edu.br/portal2-repositorio/File/nepomuceno/fpga-vhdl/cap03.pdf
--Ref: http://paginapessoal.utfpr.edu.br/erig/logica-reconfiguravel/sync_ram.vhd/view
-------------------------------------------------------------

library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;


entity RAM_2 is

    port(
		ram_in_out : inout std_logic_vector(7 downto 0);
		ram_address:    in std_logic_vector(15 downto 0);
		
		clk, write :    in std_logic
	);
	
end RAM_2;


architecture behavioral of RAM_2 is
		
type vector_of_vector is array 15 downto 0 of std_logic_vector(7 downto 0);
	constant ram : vector_of_vector := (
				x"AA",
				x"55",
				x"10",
				x"16",
				x"44",
				x"00",
				x"FF",
				x"FC",
	);
			
	--signal ram_output : std_logic_vector(7 downto 0);
	--signal rom_address :  integer range 7 downto 0;


begin

	process(clk)
	begin		
	--Verifico clock e pino do Write e crio a rotina da memoria.
		if clk'event and clk = '1' then
			if write = '1' then
				ram(ram_address) <= ram_in_out;
			end if; 
		end if;
	end process;
	
	if write = '0' then
		ram_in_out <= ram(ram_address);
	end if;
		
end behavioral;
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;


entity decode3x8 is

	port(  
		vector8: in  std_logic_vector(7 downto 0);
	     in_ABC: in  std_logic_vector(2 downto 0);
	       Dout: out std_logic
	);
	   
End decode3x8;


architecture behavioral of decode3x8 is 
begin
	
	process(in_ABC) 
	begin
		case in_ABC is
		when "000" => Dout <= vector8(0);
		when "001" => Dout <= vector8(1);
		when "010" => Dout <= vector8(2);
		when "011" => Dout <= vector8(3);
		when "100" => Dout <= vector8(4);
		when "101" => Dout <= vector8(5);
		when "110" => Dout <= vector8(6);
		when "111" => Dout <= vector8(7);
		when others => Dout <= 'U';
	end case;
end process;
		
end behavioral;
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;

entity aula2 is
end aula2;

architecture sim of aula2 is

	signal clackBoom : std_logic_vector(7 downto 0);

begin

	process begin
	clackBoom <= "ZZZZZZZZ";
	wait for 10ns;
	clackBoom <= "00000000";
	wait for 10ns;
	clackBoom <= "10100100";
	wait for 10ns;
	clackBoom <= "ZZZZZZZZ";
	wait for 10ns;
	end process;

end sim;
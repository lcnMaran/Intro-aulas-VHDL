LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

-- Counter
ENTITY counter IS
    PORT (
        CLK_in      : IN std_logic;
		stop		: IN std_logic;
        led         : OUT std_logic_vector(3 DOWNTO 0);
    );
END counter;

ARCHITECTURE rtl OF counter IS

	SIGNAL iCounter : unsigned(28 DOWNTO 0);

	SIGNAL clk      : std_logic;
	SIGNAL locked   : std_logic;

	
	COMPONENT exemplo_pll IS
		PORT
		(
			areset		: IN STD_LOGIC  := '0';
			inclk0		: IN STD_LOGIC  := '0';
			c0			: OUT STD_LOGIC ;
			locked		: OUT STD_LOGIC 
		);	
	END exemplo_pll;
	
	
BEGIN

	DUT : exemplo_pll
	PORT MAP
		(
			areset	=> '0',    --Resets all counters to initial values, including the GATE_LOCK_COUNTER parameter
			inclk0	=> clk_in, --The clock inputs that drive the clock network.
			c0		=> clk,
			locked	=> locked  --This output port acts as an indicator when the PLL hasreached phase-locked
		);


    COUNT_SHIFT: PROCESS (CLK_in)
    BEGIN
		if (CLK'event and CLK='1') then
            if stop = '0' then 		-- Count down
				iCounter <= iCounter + 1;
            end if;
        end if;
    END PROCESS;
    
	led <= std_logic_vector(iCounter(iCounter'high DOWNTO iCounter'high - 3));

END rtl;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY waitonesec IS
PORT ( clock, reset		: IN STD_LOGIC;
		done					: OUT STD_LOGIC);
END waitonesec;


ARCHITECTURE behaviour OF waitonesec IS
SIGNAL adder,D,Q			: UNSIGNED(25 DOWNTO 0);
BEGIN

D <= Q + 1;


done <= '1' WHEN Q = 50000000 ELSE '0';


PROCESS(clock, reset)
BEGIN
	IF (reset = '1') THEN
		Q <= to_unsigned(0,26);
	ELSIF(RISING_EDGE(clock)) THEN
		Q <= D;
	END IF;
END PROCESS;
END behaviour;

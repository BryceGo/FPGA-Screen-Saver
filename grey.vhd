LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY grey IS
PORT( 	input	: IN std_logic_vector(2 downto 0);
			output:	OUT std_logic_vector(2 downto 0)
			);
END grey;

ARCHITECTURE behaviour of grey IS
BEGIN
--Grey code algorithm

--output bit0 is xor of input bit0 and bit1
output(0) <= input(0) XOR input(1);

--output bit1 is xor of input bit1 and bit2
output(1) <= input(1) XOR input(2);

--output bit2 is exactly input bit2
output(2) <= input(2);

END behaviour;
	
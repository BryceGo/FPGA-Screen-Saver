LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY bline is 
PORT(	clk				: IN STD_LOGIC;
		x0,x1				: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		y0,y1				: IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		reset				: IN STD_LOGIC;
		
		plot				: OUT STD_LOGIC;
		outx				: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		outy				: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		donex				: OUT STD_LOGIC);
END bline;

ARCHITECTURE behaviour of bline IS

BEGIN

PROCESS(clk, reset)
VARIABLE currentx	:STD_LOGIC_VECTOR(7 DOWNTO 0);
VARIABLE currenty	:STD_LOGIC_VECTOR(6 DOWNTO 0);
VARIABLE	dx			: UNSIGNED(7 DOWNTO 0);
VARIABLE dy			: UNSIGNED(6 DOWNTO 0);
VARIABLE sx, sy 	: SIGNED(1 DOWNTO 0);
VARIABLE error		: SIGNED(8 DOWNTO 0);
VARIABLE error2	: SIGNED (9  DOWNTO 0);
VARIABLE e2			: SIGNED(9 DOWNTO 0);
BEGIN


	
	IF (reset = '1') THEN
		if(UNSIGNED(x0) < UNSIGNED(x1)) then
				sx := "01";
				dx := UNSIGNED(x1) - UNSIGNED(x0);
			ELSE
				sx := "11";
				dx := UNSIGNED(x0) - UNSIGNED(x1);
			end if;
			
			if(UNSIGNED(y0) < UNSIGNED(y1)) then
				sy := "01";
				dy := UNSIGNED(y1) - UNSIGNED(y0);
			ELSE
				sy := "11";
				dy := UNSIGNED(y0) - UNSIGNED(y1);
			end if;
			error := to_signed(to_integer(dx), 9) -  to_signed(to_integer(dy), 9);
			
			
			currentx := x0;
			currenty := y0;
			outx <= x0;
			outy <= y0;
			plot <= '1';
			donex <= '0';
			
	ELSIF (rising_edge(clk)) THEN
	
		IF(currentx = x1 AND currenty = y1) THEN
			donex <= '1';
			 plot <= '0';
			ELSE
				error2 := (error(8 DOWNTO 0) & '0');
				IF (error2 > NOT(to_signed(to_integer(dy), 10)) + 1 ) THEN
					error := error - to_signed(to_integer(dy), 9);
					
					IF (sx = "01") THEN
						currentx := STD_LOGIC_VECTOR(UNSIGNED(currentx) + 1);
					ELSE
						currentx := STD_LOGIC_VECTOR(UNSIGNED(currentx) - 1);
					END IF;
					
				END IF;
				
				
				IF (error2 < to_signed(to_integer(dx), 10)) THEN
					error := error + to_signed(to_integer(dx), 9);
					
					IF (sy = "01") THEN
						currenty := STD_LOGIC_VECTOR(UNSIGNED(currenty) + 1);
					ELSE
						currenty := STD_LOGIC_VECTOR(UNSIGNED(currenty) - 1);
					END IF;
					
				END IF;
					
				outx <= currentx;
				outy <= currenty;
				donex <= '0';
			END IF;
			
		
	END IF;
END process;

END behaviour;
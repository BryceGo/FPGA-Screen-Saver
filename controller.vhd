LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY controller IS 
PORT (resetn,clock		: IN STD_LOGIC;
		x						: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		y						: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		plot					: OUT STD_LOGIC;
		donee					: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		iteration			: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		colour				: OUT STD_LOGIC_VECTOR(2 DOWNTO 0));		
END ENTITY;


ARCHITECTURE behaviour OF controller IS

COMPONENT bline
	PORT(	clk				: IN STD_LOGIC;
			x0,x1				: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			y0,y1				: IN STD_LOGIC_VECTOR(6 DOWNTO 0);
			reset				: IN STD_LOGIC;
			
			plot				: OUT STD_LOGIC;
			outx				: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			outy				: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			donex				: OUT STD_LOGIC);
END COMPONENT;

COMPONENT fillScreen
	PORT(	clk		:	IN STD_LOGIC;
			resetn	: IN STD_LOGIC;
			x			:	OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			y			:	OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			done		: OUT STD_LOGIC;
			donepulse : OUT STD_LOGIC;
			plot		: OUT STD_LOGIC
			);
END COMPONENT;

COMPONENT grey
PORT( 	input	: IN std_logic_vector(2 downto 0);
			output:	OUT std_logic_vector(2 downto 0)
			);
END COMPONENT;


COMPONENT waitonesec
PORT ( clock, reset		: IN STD_LOGIC;
		done					: OUT STD_LOGIC);
END COMPONENT;


SIGNAL ctrl					: STD_LOGIC;

SIGNAL resetb				: STD_LOGIC;
SIGNAL doneB,doneF,doneW: STD_LOGIC;
SIGNAL doneEr				: STD_LOGIC;
SIGNAL doneFpulse			: STD_LOGIC;
SIGNAL xF,xB				: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL yF,yB				: STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL plotF, plotB		: STD_LOGIC;

SIGNAL doneS				: STD_LOGIC;
SIGNAL start,resetw		: STD_LOGIC;


SIGNAL x0B, x1B			: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL y0B, y1B			: STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL colourB				: STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL colourBin			: STD_LOGIC_VECTOR(6 DOWNTO 0);

SIGNAL enablefill,enableb:STD_LOGIC;
SIGNAL answer,iter, D, Q: UNSIGNED(6 DOWNTO 0);

TYPE statecode IS (fill_screen, b_line,floop,finish,delay,erase);
SIGNAL PS, NS				: statecode;

BEGIN





fillscreen0: fillScreen PORT MAP(clk => clock, resetn => resetn, x=> xF, y=> yF, done=> doneF, donepulse => doneFpulse, plot => plotF);
--ctrl <= doneF;

--start <= (doneB OR doneFpulse) AND NOT(doneS);
bline0: bline PORT MAP(clk => clock,x0 => x0B , x1 => x1B, y0 => y0B, y1 => y1B, reset => start, plot => plotB, outx => xB, outy=> yB, donex =>doneB);

 
graycode: grey PORT MAP (input => colourBin(2 DOWNTO 0), output=>colourB);
delay0:waitonesec PORT MAP(reset =>resetw, clock => clock, done => doneW);
 
 

 
 OFL:PROCESS(PS, xF, yF, plotF,xB,yB,plotB)
 VARIABLE iterator,x1			: UNSIGNED(6 DOWNTO 0);
 BEGIN
 
	enablefill <= '0';
	enableb <= '0';
	IF(PS = fill_screen) THEN
		iterator := "0000000";
		x <= xF;
		y <= yF;
		plot <= '1';
		colour <= "000";
		donee <= "1000";
	ELSIF(PS = b_line) THEN
		start <= '0';
		x <= xB;
		y <= yB;
		plot <= '1';--plotB;
		colour <= colourB;	
		donee <= "0010";
	ELSIF(PS = floop) THEN
		x0B <= "00000000";
		x1B <= "10011111";
		x1 := Q(3 DOWNTO 0) & "000";
		y0B <= STD_LOGIC_VECTOR(x1);
		y1B <= STD_LOGIC_VECTOR("1111000" - x1);
		colourBin <= STD_LOGIC_VECTOR(Q mod 8);
		resetw <= '1';
		doneS <= '0';
		start <= '1';
		plot <= '0';
		donee <= "0100";
		
		IF (Q = 14) THEN
			doneS <= '1';
		END IF;
	
	ELSIF(PS = delay) THEN
		plot <= '0';
		resetw <= '0';
		start <= '1';
		donee <= "0001";
	
	ELSIF(PS = finish) THEN
		plot <= '0';
		donee <= "0000";
	ELSIF(PS = erase) THEN
		start <= '0';
		plot <= '1';
		x <= xB;
		y <= yB;
		colour <= "000";
		doneEr <= doneB;
	END IF;
 END PROCESS;
 

 
 
 IFL:PROCESS(doneF, resetn, PS, doneS, doneB)
BEGIN
		IF((PS = fill_screen AND doneF = '0') OR resetn = '1') THEN
			NS <= fill_screen;
		ELSIF((PS = fill_screen AND doneF = '1') OR (PS = erase AND doneEr = '1')) THEN
			NS <= floop;
		ELSIF ((PS = b_line AND doneB = '0') OR (PS = floop AND doneS = '0')) THEN
			NS <= b_line;
		ELSIF (PS =  floop AND doneS = '1') THEN
			NS <= finish;
		ELSIF((PS = b_line AND doneB = '1') OR (PS = delay AND doneW = '0') ) THEN
			NS <= delay;
		ELSIF(PS = finish) THEN
			NS <= fill_screen;
		ELSIF((PS = delay AND doneW = '1') OR (PS = erase AND doneEr = '0')) THEN
			NS <= erase;
		END IF;
	
END PROCESS;
 

 SR: PROCESS(clock)
	BEGIN
		IF(rising_edge(clock)) THEN
			PS <= NS;
			
			IF(resetn = '1' OR PS = finish) THEN
				Q <= "0000000";
			
			ELSIF(NS = floop) THEN
				Q <= D;	
			END IF;
		END IF;
	END PROCESS;
 
 D <= Q + 1;
 
 
END behaviour;











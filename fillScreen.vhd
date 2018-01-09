library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY fillScreen IS
	PORT(	clk		:	IN STD_LOGIC;
			resetn	: IN STD_LOGIC;
			x			:	OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			y			:	OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			done		: OUT STD_LOGIC;
			donepulse : OUT STD_LOGIC;
			plot		: OUT STD_LOGIC
			);
END fillScreen;

ARCHITECTURE behaviour of fillScreen IS
SIGNAL loadX, loadY : STD_LOGIC;
SIGNAL initX, initY : STD_LOGIC := '1';
SIGNAL outX	: UNSIGNED(7 DOWNTO 0);
SIGNAL outY	: UNSIGNED(6 DOWNTO 0);

BEGIN

 PROCESS (clk,resetn)
  variable Y : unsigned(6 downto 0);
  variable X : unsigned(7 downto 0);
  variable doneX, doneY : STD_LOGIC;
  VARIABLE donesecond	:STD_LOGIC;
  begin
		IF(resetn = '1') THEN
			initX <= '1';
			initY <= '1';
			loadX <= '0';
			loadY <= '1';
			plot  <= '0';
			done <= '0';
			donesecond := '0';
			
		elsif (rising_edge(clk)) then
			
		
			if(initY = '1') then
				Y := "0000000";
			elsif (loadY = '1') then
				Y := Y + 1;
			end if;
			if(initX = '1') then
				X := "00000000";
			elsif (loadX = '1') then
				X := X + 1;
			end if;
			
			
			
			doneX := '0';
			doneY := '0';
			if (Y = 119) then
				doneY := '1';
			end if;
			if (X = 159) then
				doneX := '1';
			end if;
			
			
			
			if (doneX = '1') then
				initX <= '1';
				loadX <= '0';
				initY <= '0';
				loadY <= '1';
				plot <= '1';
			else
				initX <= '0';
				loadX <= '1';
				initY <= '0';
				loadY <= '0';
				plot <= '1';
			end if;
			
			if (donesecond = '1') THEN
				donepulse <= '0';
			elsif (doneY = '1' AND doneX = '1') then
				plot <= '0';
				initX <= '0';
				loadX <= '0';
				initY <= '0';
				loadY <= '0';
				done <= '1';
				donepulse <= '1';
				donesecond := '1';
				
				Y := "1110111"; -- 119
				X := "10011111"; --  159
				
			end if;	
		end if;
			
			
		outX <= X;
		outY <= Y;
		
	end process;	
	
	x <= STD_LOGIC_VECTOR(outX);
	y <= STD_LOGIC_VECTOR(outY);
	
END behaviour;

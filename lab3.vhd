library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab3 is
  port(CLOCK_50            : in  std_logic;
       KEY                 : in  std_logic_vector(3 downto 0);
       SW                  : in  std_logic_vector(17 downto 0);
		 LEDG,LEDR				: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
       VGA_R, VGA_G, VGA_B : out std_logic_vector(9 downto 0);  -- The outs go to VGA controller
       VGA_HS              : out std_logic;
       VGA_VS              : out std_logic;
       VGA_BLANK           : out std_logic;
       VGA_SYNC            : out std_logic;
       VGA_CLK             : out std_logic
		 );
end lab3;

architecture rtl of lab3 is

 --Component from the Verilog file: vga_adapter.v
	component vga_adapter
		generic(RESOLUTION : string);
		port (resetn                                     : in  std_logic;
          clock                                        : in  std_logic;
          colour                                       : in  std_logic_vector(2 downto 0);
          x                                            : in  std_logic_vector(7 downto 0);
          y                                            : in  std_logic_vector(6 downto 0);
          plot                                         : in  std_logic;
          VGA_R, VGA_G, VGA_B                          : out std_logic_vector(9 downto 0);
          VGA_HS, VGA_VS, VGA_BLANK, VGA_SYNC, VGA_CLK : out std_logic);
	end component;
   
	component controller
	PORT (resetn,clock		: IN STD_LOGIC;
		x						: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		y						: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		donee					: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		plot					: OUT STD_LOGIC;
		iteration			: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		colour				: OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
	end component;
	
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
	
	
  signal x      : std_logic_vector(7 downto 0);
  signal y      : std_logic_vector(6 downto 0);
  signal colour8:	std_LOGIC_VECTOR(7 downto 0);
  signal colour : std_logic_vector(2 downto 0);
  signal plot   : std_logic;
  SIGNAL resetter : STD_LOGIC;
  SIGNAL nothing : STD_LOGIC;
  SIGNAL x0, x1	: STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL y0, y1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
begin
  -- includes the vga adapter, which should be in your project 
  vga_u0 : vga_adapter
    generic map(RESOLUTION => "160x120") 
    port map(resetn    => KEY(3),
             clock     => CLOCK_50,
             colour    => colour,
             x         => x,
             y         => y,
             plot      => plot,
             VGA_R     => VGA_R,
             VGA_G     => VGA_G,
             VGA_B     => VGA_B,
             VGA_HS    => VGA_HS,
             VGA_VS    => VGA_VS,
             VGA_BLANK => VGA_BLANK,
             VGA_SYNC  => VGA_SYNC,
             VGA_CLK   => VGA_CLK);
				 
	-- rest of your code goes here, as well as possibly additional file
	
	--Task 3 AND 4
	--control: controller PORT MAP(resetn => NOT(KEY(3)), clock => CLOCK_50, x => x, y => y, plot => plot , colour =>colour, donee => LEDG(3 DOWNTO 0), iteration => LEDR(6 DOWNTO 0));
	
	--Task 2
	filScr0:	fillScreen PORT MAP (clk => CLOCK_50, x => x, y => y, plot => plot, resetn => NOT(KEY(3)) , done => LEDG(0));
	colour8 <= std_logic_vector(unsigned(x) mod 8);
	colour <= colour8(2 downto 0);
	
end RTL;



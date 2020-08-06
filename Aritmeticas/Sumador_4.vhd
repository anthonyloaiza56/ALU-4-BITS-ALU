----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:35:24 12/12/2012 
-- Design Name: 
-- Module Name:    nand_nor_top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sumador_p is 
	Port(
		A0 : in  STD_LOGIC;
        A1 : in  STD_LOGIC;
        A2 : in  STD_LOGIC;
        A3 : in  STD_LOGIC;
        B0 : in  STD_LOGIC;
        B1 : in  STD_LOGIC;
        B2 : in  STD_LOGIC;
        B3 : in  STD_LOGIC;
        O1 : out  STD_LOGIC;
        O2 : out  STD_LOGIC;
        O3 : Out  STD_LOGIC;
        O4 : out  STD_LOGIC;
		Cout : out STD_LOGIC);
end sumador_p;

architecture Behavioral of sumador_p is	
	signal c0 : STD_LOGIC;
	signal c1 : STD_LOGIC;
	signal c2 : STD_LOGIC;

begin
	c0 <= A0 and B0;
	O1<= A0 xor B0;
	
	c1 <= (A1 and B1) or (A1 and c0) or (B1 and c0);
	O2 <= c0 xor A1 xor B1 ;
	
	c2 <= (A2 and B2) or (A2 and c1) or (B2 and c1);
	O3 <= c1 xor A2 xor B2 ;

	Cout <= (A3 and B3) or (A3 and c2) or (B3 and c2);
	O4 <= c2 xor A3 xor B3 ;

end Behavioral;
	

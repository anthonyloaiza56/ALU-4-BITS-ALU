----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    7/28/2020
-- Design Name: 
-- Module Name:    XOR_L- Behavioral 
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

entity XOR_L is
    Port ( INA1 : in  STD_LOGIC;
           INA2 : in  STD_LOGIC;
           INA3 : in  STD_LOGIC;
		   INA4 : in  STD_LOGIC;
		   
		   INB1 : in  STD_LOGIC;
           INB2 : in  STD_LOGIC;
           INB3 : in  STD_LOGIC;
		   INB4 : in  STD_LOGIC;
		   
           OUT1 : out  STD_LOGIC;
           OUT2 : out  STD_LOGIC;
           OUT3 : out  STD_LOGIC;
           OUT4 : out  STD_LOGIC);
end XOR_L;

architecture Behavioral of XOR_L is
	signal A1 : STD_LOGIC;
	signal A2 : STD_LOGIC;
	signal A3 : STD_LOGIC;
	signal A4 : STD_LOGIC;
	signal B1 : STD_LOGIC;
	signal B2 : STD_LOGIC;
	signal B3 : STD_LOGIC;
	signal B4 : STD_LOGIC;
	signal X1 : STD_LOGIC;
	signal X2 : STD_LOGIC;
	signal X3 : STD_LOGIC;
	signal X4 : STD_LOGIC;
begin

X1 <= A1 or B1;
X2 <= A2 or B2;
X3 <= A3 or B3;
X4 <= A4 or B4;


-- compensation for inverting inputs and outputs
A1   <=  INA1;
A2   <=  INA2;
A3   <=  INA3;
A4   <=  INA4;

B1   <=  INB1;
B2   <=  INB2;
B3   <=  INB3;
B4   <=  INB4;

OUT1 <=  X1;
OUT2 <=  X2;
OUT3 <=  X3;
OUT4 <= X4;

end Behavioral;



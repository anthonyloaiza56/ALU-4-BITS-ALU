----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:35:24 12/12/2012 
-- Design Name: 
-- Module Name:    AND_L- Behavioral 
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

entity Zero_F is
    Port ( INA1 : in  STD_LOGIC;
           INA2 : in  STD_LOGIC;
           INA3 : in  STD_LOGIC;
           INA4 : in  STD_LOGIC;		
           OUTZ : out  STD_LOGIC);
end Zero_F;

architecture Behavioral of Zero_F is
	signal A1 : STD_LOGIC;
	signal A2 : STD_LOGIC;
	signal A3 : STD_LOGIC;
	signal A4 : STD_LOGIC;
	signal X1 : STD_LOGIC;
begin

X1 <= (not A1) and (not A2) and (not A3) and (not A4) ;

A1   <=  INA1;
A2   <=  INA2;
A3   <=  INA3;
A4   <=  INA4;

OUTZ <=  X1;

end Behavioral;
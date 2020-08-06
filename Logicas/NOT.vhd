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

entity NOT_L is
    Port ( INA1 : in  STD_LOGIC;
           INA2 : in  STD_LOGIC;
           INA3 : in  STD_LOGIC;
           INA4 : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC;
           OUT2 : out  STD_LOGIC;
           OUT3 : out  STD_LOGIC;
           OUT4 : out  STD_LOGIC);
end NOT_L;
architecture Behavioral of NOT_L is
	signal A1 : STD_LOGIC;
	signal A2 : STD_LOGIC;
	signal A3 : STD_LOGIC;
	signal A4 : STD_LOGIC;
	signal X1 : STD_LOGIC;
	signal X2 : STD_LOGIC;
	signal X3 : STD_LOGIC;
	signal X4 : STD_LOGIC;
begin

X1 <= not A1 ;
X2 <= not A2 ;
X3 <= not A3 ;
X4 <= not A4 ;


-- compensation for inverting inputs and outputs
A1   <= not INA1;
A2   <= not INA2;
A3   <= not INA3;
A4   <= not INA4;

OUT1 <= not X1;
OUT2 <= not X2;
OUT3 <= not X3;
OUT4 <= not X4;

end Behavioral;

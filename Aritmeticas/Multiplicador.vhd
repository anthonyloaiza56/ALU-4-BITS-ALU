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
entity adder4bLogic is
 Port(
  ZeroI : in  STD_LOGIC;
  A0 : in  STD_LOGIC;
  A1 : in  STD_LOGIC;
  A2 : in  STD_LOGIC;
  A3 : in  STD_LOGIC;
  B0 : in  STD_LOGIC;
  B1 : in  STD_LOGIC;
  B2 : in  STD_LOGIC;
  B3 : in  STD_LOGIC;
  Cin   : in STD_LOGIC;
  Cout : out STD_LOGIC;  
  R0 : out  STD_LOGIC;
  R1 : out  STD_LOGIC;
  R2 : out  STD_LOGIC;
  R3 : out  STD_LOGIC;
  R4 : out  STD_LOGIC;
  R5 : out  STD_LOGIC;
  R6 : out  STD_LOGIC;
  R7 : out  STD_LOGIC);
end adder4bLogic;

architecture Behavioral of adder4bLogic is	
  signal Zero_O  :   STD_LOGIC;
  signal C0 :   STD_LOGIC;
  signal C1 :   STD_LOGIC;
  signal C2 :   STD_LOGIC;
  signal C3 :   STD_LOGIC;
  signal C4 :   STD_LOGIC;
  signal C5 :   STD_LOGIC;
  signal C6 :   STD_LOGIC;
  signal C7 :   STD_LOGIC;
  signal C8 :   STD_LOGIC;
  signal C9 :   STD_LOGIC;
  signal C10 :   STD_LOGIC;
  signal C11 :   STD_LOGIC;
  signal C12 :   STD_LOGIC;
  signal C13 :   STD_LOGIC;
  signal C14 :   STD_LOGIC; 
  signal Carry0 :   STD_LOGIC;
  signal Carry1 :   STD_LOGIC;
  signal Carry2 :   STD_LOGIC ;
  signal Carry3 :   STD_LOGIC ;
  signal Carry4 :   STD_LOGIC ;
  signal Carry5 :   STD_LOGIC ;
  signal Carry6 :   STD_LOGIC ;
  signal Carry7 :   STD_LOGIC ;
  signal Carry8 :   STD_LOGIC ;
  signal Carry9 :   STD_LOGIC ;
  signal Carry10 :   STD_LOGIC ;
  signal E0 :   STD_LOGIC ;
  signal E1 :   STD_LOGIC ;
  signal E2 :   STD_LOGIC ;
  signal E3 :   STD_LOGIC ;
  signal E4 :   STD_LOGIC ;
  signal E5 :   STD_LOGIC ;
  


begin
  Zero_O <= ZeroI;
  R0 <= A0 and B0;
  C0 <= A1 and B0; 
  C1 <= A0 and B1;
  C2 <= A2 and B0;
  C3 <= A1 and B1;
  C4 <= A3 and B0;
  C5 <= A2 and B1;
  C6 <= A3 and B1;
  C7 <= A0 and B2;
  C8 <= A1 and B2;
  C9 <= A2 and B2;
  C10 <= A3 and B2;
  C11 <= A0 and B3;
  C12 <= A1 and B3;
  C13 <= A2 and B3;
  C14 <= A3 and B3;
  

  Carry0 <= (C0 and Zero_O) or (C1 and Zero_O) or (C1 and C0);
  R1 <= C1 xor C0 xor Zero_O;

  Carry1 <= (C2 and Cin) or (C3 and Cin) or (C3 and C2);
  E0 <= (C3 xor C2) xor Cin;
 
  Carry2 <= (C4 and Carry1) or (C5 and Carry1) or (C5 and C4);
  E1 <= (C5 xor C4) xor Carry1;

  Carry3 <= (Zero_O and Carry2) or (C6 and Carry2) or (C6 and Zero_O);
  E2 <= (C6 xor Zero_O) xor Carry2;
  
  Carry4 <= ( E0 and Zero_O) or (C7 and Zero_O) or (C7 and E0);
  R2 <= ( C7 xor E0) xor Zero_O;

  Carry5 <= ( E1 and Carry4) or (C8 and Carry4) or (C8 and E1);
  E3 <= ( C8 xor E1) xor Carry4;
 
  Carry6 <= ( E2 and Carry5) or (C9 and Carry5) or (C9 and E2);
  E4 <= ( C9 xor E2) xor Carry5;
 
  Carry7 <= ( Carry3 and Carry6) or (C10 and Carry6) or (C10 and Carry3);
  E5 <= ( C10 xor Carry3) xor Carry6;
 
  Carry8 <= ( E3 and Zero_O)  or (C11 and Zero_O) or (C11 and E3);
  R3 <= ( C11 xor E3) xor Zero_O;
 
  Carry9 <= ( E4 and Carry8) or  (C12 and Carry8) or  (C12 and E4);
  R4 <= (  C12 xor E4) xor Carry8;
 
  Carry10 <= ( E5 and Carry9) or (C13 and Carry9) or (C13 and E5);
  R5 <= ( C13 xor E5) xor Carry9;
 
  R7 <= ( C14 and Carry10) or (C14 and Carry10) or (C14 and C7);
  R6 <= ( C14 xor C7) xor C10;
 
 
end Behavioral;
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

entity Mux_8_1 is
    Port (
      S0: in STD_LOGIC;
      S1 :in STD_LOGIC;
      S2 :in STD_LOGIC;
      IN00 :in STD_LOGIC;
      IN10 :in STD_LOGIC;
      IN20 :in STD_LOGIC;
      IN30 :in STD_LOGIC;

      IN01 :in STD_LOGIC;
      IN11 :in STD_LOGIC;
      IN21 :in STD_LOGIC;
      IN31 :in STD_LOGIC;

      IN02 :in STD_LOGIC;
      IN12 :in STD_LOGIC;
      IN22 :in STD_LOGIC;
      IN32 :in STD_LOGIC;

      IN03 :in STD_LOGIC;
      IN13 :in STD_LOGIC;
      IN23 :in STD_LOGIC;
      IN33 :in STD_LOGIC;
      
      IN04 :in STD_LOGIC;
      IN14 :in STD_LOGIC;
      IN24 :in STD_LOGIC;
      IN34 :in STD_LOGIC;

      IN05 :in STD_LOGIC;
      IN15 :in STD_LOGIC;
      IN25 :in STD_LOGIC;
      IN35 :in STD_LOGIC;

      IN06 :in STD_LOGIC;
      IN16 :in STD_LOGIC;
      IN26 :in STD_LOGIC;
      IN36 :in STD_LOGIC;      

      IN07 :in STD_LOGIC;
      IN17 :in STD_LOGIC;
      IN27 :in STD_LOGIC;
      IN37 :in STD_LOGIC;
      
      Y0 :out STD_LOGIC;
      Y1 :out STD_LOGIC;
      Y2 :out STD_LOGIC;
      Y3 :out STD_LOGIC );
end Mux_8_1 ;


Architecture behavioral of Mux_8_1 is
   Signal a00,a01,a02,a03,a04,a05,a06,a07:STD_LOGIC;
   Signal a10,a11,a12,a13,a14,a15,a16,a17:STD_LOGIC;
   Signal a20,a21,a22,a23,a24,a25,a26,a27:STD_LOGIC;
   Signal a30,a31,a32,a33,a34,a35,a36,a37:STD_LOGIC;
    
begin
    a00 <= IN00  and (not s0)  and  (not s1)  and  (not s2);
    a01 <= IN01  and (not s0)  and  (not s1)  and          s2;             
    a02 <= IN02  and (not s0)  and         s1    and  (not s2);
    a03 <= IN03  and (not s0)  and         s1    and          s2;
    a04 <= IN04  and      s0      and  (not s1)  and  (not s2);
    a05 <= IN05  and      s0      and  (not s1)  and          s2;
    a06 <= IN06  and      s0      and          s1   and  (not s2);
    a07 <= IN07  and      s0      and          s1   and          s2;
    Y0 <= a00 or a01 or a02 or a03 or a04 or a05 or a06 or a07 ;


    a10 <= IN10  and (not s0)  and  (not s1)  and  (not s2);
    a11 <= IN11  and (not s0)  and  (not s1)  and          s2;             
    a12 <= IN12  and (not s0)  and         s1    and  (not s2);
    a13 <= IN13  and (not s0)  and         s1    and          s2;
    a14 <= IN14  and      s0      and  (not s1)  and  (not s2);
    a15 <= IN15  and      s0      and  (not s1)  and          s2;
    a16 <= IN16  and      s0      and          s1   and  (not s2);
    a17 <= IN17  and      s0      and          s1   and          s2;     
    Y1 <= a10 or a11 or a12 or a13 or a14 or a15 or a16 or a17 ;

    a20 <= IN20  and (not s0)  and  (not s1)  and  (not s2);
    a21 <= IN21  and (not s0)  and  (not s1)  and          s2;             
    a22 <= IN22  and (not s0)  and         s1    and  (not s2);
    a23 <= IN23  and (not s0)  and         s1    and          s2;
    a24 <= IN24  and      s0      and  (not s1)  and  (not s2);
    a25 <= IN25  and      s0      and  (not s1)  and          s2;
    a26 <= IN26  and      s0      and          s1   and  (not s2);
    a27 <= IN27  and      s0      and          s1   and          s2;
    Y2 <= a20 or a21 or a22 or a23 or a24 or a25 or a26 or a27 ;


    a30 <= IN30  and (not s0)  and  (not s1)  and  (not s2);
    a31 <= IN31  and (not s0)  and  (not s1)  and          s2;             
    a32 <= IN32  and (not s0)  and         s1    and  (not s2);
    a33 <= IN33  and (not s0)  and         s1    and          s2;
    a34 <= IN34  and      s0      and  (not s1)  and  (not s2);
    a35 <= IN35  and      s0      and  (not s1)  and          s2;
    a36 <= IN36  and      s0      and          s1   and  (not s2);
    a37 <= IN37  and      s0      and          s1   and          s2;     
    Y3 <= a30 or a31 or a32 or a33 or a34 or a35 or a36 or a37 ;


end behavioral;
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:39:43 03/05/2018 
-- Design Name: 
-- Module Name:    prac3 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity prac3 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           F5 : out  STD_LOGIC;
           F4 : out  STD_LOGIC;
           F3 : out  STD_LOGIC;
           F2 : out  STD_LOGIC;
           F1 : out  STD_LOGIC;
           F0 : out  STD_LOGIC);
end prac3;

architecture Behavioral of prac3 is

begin
F5<= A AND B;
F4<= (A AND C) OR (A AND NOT B);
F3<=(A XOR B) AND C;
F2<= B AND NOT C;
F1<= '0';
F0<= C;

end Behavioral;
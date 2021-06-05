----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:53:08 04/08/2018 
-- Design Name: 
-- Module Name:    pr4 - Behavioral 
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

entity pr4 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           f0 : out  STD_LOGIC;
           f1 : out  STD_LOGIC;
           f2 : out  STD_LOGIC;
           f3 : out  STD_LOGIC;
           f4 : out  STD_LOGIC;
           f5 : out  STD_LOGIC;
           f6 : out  STD_LOGIC);
end pr4;

architecture Behavioral of pr4 is

begin
f0 <= NOT(D OR(A AND C));
f1 <= NOT( (NOT(A) AND NOT(C)) OR NOT(D) OR (NOT(B) AND C AND D) );
f2 <= '0';
f3 <= NOT(D);
f4 <= NOT( (A AND C) AND D);
f5 <= NOT(D AND ((B AND C)OR A) );
f6 <= NOT(D);

end Behavioral;
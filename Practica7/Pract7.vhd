----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:31:24 04/22/2018 
-- Design Name: 
-- Module Name:    Pract7 - Behavioral 
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

entity Pract7 is
    Port ( Entradas : in  STD_LOGIC_VECTOR (3 downto 0);
           Salidas : out  STD_LOGIC_VECTOR (6 downto 0));
end Pract7;

architecture Behavioral of Pract7 is

begin

WITH Entradas SELECT
Salidas <= "0000001" WHEN "0000", --0(1)
           "1001111" WHEN "0001", --1(79)
			  "0010010" WHEN "0010", --2(18)
			  "0000110" WHEN "0011", --3(6)
			  "1001100" WHEN "0100", --4(76)
			  "0100100" WHEN "0101", --5(36)
			  "0100000" WHEN "0110", --6(32)
			  "0001110" WHEN "0111", --7(14)
			  "0000000" WHEN "1000", --8(0)
			  "0001100" WHEN "1001", --9(12)
			  "1110111" WHEN OTHERS; --A(126)

end Behavioral;
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:50:04 04/28/2018 
-- Design Name: 
-- Module Name:    Mux81 - Behavioral 
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

entity Mux81 is
    Port ( Entradas : in  STD_LOGIC_VECTOR (7 downto 0);
           Selecciones : in  STD_LOGIC_VECTOR (2 downto 0);
           Salida : out  STD_LOGIC);
end Mux81;

architecture Behavioral of Mux81 is

begin
WITH Selecciones SELECT
Salida <= Entradas(0) WHEN "000",
          Entradas(1) WHEN "001",
	       Entradas(2) WHEN "010",
	       Entradas(3) WHEN "011",
	       Entradas(4) WHEN "100",
	       Entradas(5) WHEN "101",
	       Entradas(6) WHEN "110",
	       Entradas(7) WHEN "111",
	       '1' WHEN OTHERS;  
end Behavioral;
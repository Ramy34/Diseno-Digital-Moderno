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
    Port ( Datos : in  STD_LOGIC_VECTOR (7 downto 0);
           Sel : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC);
end Mux81;

architecture Behavioral of Mux81 is

begin
WITH Sel SELECT

 Y<= Datos(0) WHEN "000",
     Datos(1) WHEN "001",
	  Datos(2) WHEN "010",
	  Datos(3) WHEN "011",
	  Datos(4) WHEN "100",
	  Datos(5) WHEN "101",
	  Datos(6) WHEN "110",
	  Datos(7) WHEN "111",
	  '1' WHEN OTHERS;  
end Behavioral;
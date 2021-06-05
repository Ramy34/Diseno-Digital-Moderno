----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:57:42 04/28/2018 
-- Design Name: 
-- Module Name:    Mux21 - Behavioral 
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

entity Mux21 is
    Port ( Entradas : in  STD_LOGIC_VECTOR (1 downto 0);
           Seleccion : in  STD_LOGIC;
           Salida : out  STD_LOGIC);
end Mux21;

architecture Behavioral of Mux21 is

begin
WITH Seleccion SELECT
Salida <= Entradas(0) WHEN '0',
          Entradas(1) WHEN '1',
	       '1' WHEN OTHERS;
end Behavioral;
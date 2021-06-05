----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:40:59 04/30/2018 
-- Design Name: 
-- Module Name:    Divisor - Behavioral 
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

entity Divisor is
    Port ( Reloj : in  STD_LOGIC;
           Divisor : out  STD_LOGIC);
end Divisor;

architecture Behavioral of Divisor is

begin
 PROCESS (Reloj)
 VARIABLE cuenta: STD_LOGIC_VECTOR(27 downto 0):= X"0000000"; --Creamos una variable local, valor en hexadecimal.
  BEGIN -- Si el Flanco es positivo (rising_edge)...
	IF RISING_EDGE(Reloj)THEN
		IF cuenta = X"8F0D180"THEN --Tiempo limite. 1.51 seg.
			cuenta := X"0000000";
		ELSE
			cuenta:=cuenta+1;
		END IF;
	END IF;
	IF cuenta > x"47868C0" THEN
	Divisor <= '1';
	else
	Divisor <='0';
	end if;
 --Divisor <= cuenta(13);-- Asignación
END PROCESS;
end Behavioral;
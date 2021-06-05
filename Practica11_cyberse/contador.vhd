----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:59:57 05/13/2018 
-- Design Name: 
-- Module Name:    contador - Behavioral 
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

entity contador is
    Port ( segundo : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (5 downto 0));
end contador;

architecture Behavioral of contador is

begin
process (segundo)
	variable tmp: std_logic_vector (5 downto 0) := "000100";
	begin
		if rising_edge(segundo) then
			if tmp = "100010" then 
				tmp := "000100";
			else
				tmp := tmp + 1;
			end if;
		end if;
	Q <= tmp;
end process;

end Behavioral;
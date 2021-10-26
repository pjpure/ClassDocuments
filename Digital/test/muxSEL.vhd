----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:26:14 12/12/2020 
-- Design Name: 
-- Module Name:    MuxSelector - Behavioral 
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

entity MuxSEL37 is
    Port ( CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (38 downto 0));
end MuxSEL37;

architecture Behavioral of MuxSEL37 is
	signal tmp:STD_LOGIC_VECTOR(38 downto 0):="111111111111111111111111111111111111110";
begin
	process(CLK)
	begin
	if(rising_edge(CLK))then
		tmp(0)<=tmp(38);
		for i in 1 to 38 loop
		tmp(i)<=tmp(i-1);
		end loop;
	end if;
	end process;
q<=tmp;
end Behavioral;


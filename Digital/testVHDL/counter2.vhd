library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter2_VHDL is 
   port( Clock_enable_B: in std_logic;
 	 Clock: in std_logic;
 	 Output: out std_logic_vector(0 to 5));
end Counter2_VHDL;
 
architecture Behavioral of Counter2_VHDL is
   signal temp: std_logic_vector(0 to 5);
begin   process(Clock)
   begin
      if Reset='1' then
         temp <= "000000";
      elsif(rising_edge(Clock)) then
         if Clock_enable_B='0' then
            if temp="101011" then
               temp<="0000";
            else
               temp <= temp + 1;
            end if;
         end if;
      end if;
   end process;
   Output <= temp;
end Behavioral;
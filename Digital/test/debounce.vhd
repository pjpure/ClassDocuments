----------------------------------------------------------------------------------

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;


entity debounce is
    Port ( Clock : in  STD_LOGIC;
			  sw : in  STD_LOGIC;
           outp : out  STD_LOGIC);
end debounce;

architecture BHV of debounce is  
             signal tmp: std_logic_vector(3 downto 0);
				 signal o :STD_LOGIC:='0';
				 begin
             process (Clock) 
             begin   
                   if (Clock'event and Clock='1') then 
							if (tmp < "1000") then
								o <= '0';
								tmp <= tmp + 1;
							end if;
                   end if;
						 if(sw='1' and tmp >"0100")	then
							tmp <= "0000";
							o <= '1';
						 end if;
             end process; 
                   outp <= o;
             end BHV;
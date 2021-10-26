library IEEE;
     
				use ieee.std_logic_1164.all;
        
            use ieee.std_logic_unsigned.all;
        
            entity counter is 
        
             port(Clock, CLR : in  std_logic;
        
             Q : out std_logic_vector(5 downto 0));
        
             end counter;
        
             architecture archi of counter is  
        
             signal tmp: std_logic_vector(5 downto 0);
        
             begin
        
             process (Clock, CLR) 
        
             begin   
        
                   if (CLR='1' ) then   
        
                          tmp <= "000000";
        
                   elsif (Clock'event and Clock='0') then 
        
                          tmp <= tmp + 1;
        
                   end if;     
        
             end process; 
        
                   Q <= tmp;
        
             end archi;
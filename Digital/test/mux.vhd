----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:16:23 12/14/2020 
-- Design Name: 
-- Module Name:    MUX4t1x37 - Behavioral 
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

entity MUX4t1x37 is
    Port ( I0 : in  STD_LOGIC_VECTOR (3 downto 0);
           I1 : in  STD_LOGIC_VECTOR (3 downto 0);
           I2 : in  STD_LOGIC_VECTOR (3 downto 0);
           I3 : in  STD_LOGIC_VECTOR (3 downto 0);
           I4 : in  STD_LOGIC_VECTOR (3 downto 0);
           I5 : in  STD_LOGIC_VECTOR (3 downto 0);
           I6 : in  STD_LOGIC_VECTOR (3 downto 0);
           I7 : in  STD_LOGIC_VECTOR (3 downto 0);
           I8 : in  STD_LOGIC_VECTOR (3 downto 0);
           I9 : in  STD_LOGIC_VECTOR (3 downto 0);
           I10 : in  STD_LOGIC_VECTOR (3 downto 0);
           I11 : in  STD_LOGIC_VECTOR (3 downto 0);
           I12 : in  STD_LOGIC_VECTOR (3 downto 0);
           I13 : in  STD_LOGIC_VECTOR (3 downto 0);
           I14 : in  STD_LOGIC_VECTOR (3 downto 0);
           I15 : in  STD_LOGIC_VECTOR (3 downto 0);
           I16 : in  STD_LOGIC_VECTOR (3 downto 0);
           I17 : in  STD_LOGIC_VECTOR (3 downto 0);
           I18 : in  STD_LOGIC_VECTOR (3 downto 0);
           I19 : in  STD_LOGIC_VECTOR (3 downto 0);
           I20 : in  STD_LOGIC_VECTOR (3 downto 0);
           I21 : in  STD_LOGIC_VECTOR (3 downto 0);
           I22 : in  STD_LOGIC_VECTOR (3 downto 0);
           I23 : in  STD_LOGIC_VECTOR (3 downto 0);
           I24 : in  STD_LOGIC_VECTOR (3 downto 0);
           I25 : in  STD_LOGIC_VECTOR (3 downto 0);
           I26 : in  STD_LOGIC_VECTOR (3 downto 0);
           I27 : in  STD_LOGIC_VECTOR (3 downto 0);
           I28 : in  STD_LOGIC_VECTOR (3 downto 0);
           I29 : in  STD_LOGIC_VECTOR (3 downto 0);
           I30 : in  STD_LOGIC_VECTOR (3 downto 0);
           I31 : in  STD_LOGIC_VECTOR (3 downto 0);
           I32 : in  STD_LOGIC_VECTOR (3 downto 0);
           I33 : in  STD_LOGIC_VECTOR (3 downto 0);
           I34 : in  STD_LOGIC_VECTOR (3 downto 0);
           I35 : in  STD_LOGIC_VECTOR (3 downto 0);
           I36 : in  STD_LOGIC_VECTOR (3 downto 0);
			  I37 : in  STD_LOGIC_VECTOR (3 downto 0);
			  I38 : in  STD_LOGIC_VECTOR (3 downto 0);
           SEL : in  STD_LOGIC_VECTOR (5 downto 0);
           BCD : out  STD_LOGIC_VECTOR (3 downto 0));
end MUX4t1x37;

architecture Behavioral of MUX4t1x37 is

begin
	with SEL select
		BCD <=I38 when "100110",
				I37 when "100101",
				I36 when "100100",
				I35 when "100011",
				I34 when "100010",
				I33 when "100001",
				I32 when "100000",
				I31 when "011111",
				I30 when "011110",
				I29 when "011101",
				I28 when "011100",
				I27 when "011011",
				I26 when "011010",
				I25 when "011001",
				I24 when "011000",
				I23 when "010111",
				I22 when "010110",
				I21 when "010101",
				I20 when "010100",
				I19 when "010011",
				I18 when "010010",
				I17 when "010001",
				I16 when "010000",
				I15 when "001111",
				I14 when "001110",
				I13 when "001101",
				I12 when "001100",
				I11 when "001011",
				I10 when "001010",
				I9 when "001001",
				I8 when "001000",
				I7 when "000111",
				I6 when "000110",
				I5 when "000101",
				I4 when "000100",
				I3 when "000011",
				I2 when "000010",
				I1 when "000001",
				I0 when "000000",
				"0000"	  when others;

end Behavioral;


--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : main.vhf
-- /___/   /\     Timestamp : 12/13/2020 20:16:55
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/.Xilinx/testVHDL/main.vhf -w C:/.Xilinx/testVHDL/main.sch
--Design Name: main
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity main is
   port ( SW : in    std_logic; 
          MN : out   std_logic_vector (5 downto 0));
end main;

architecture BEHAVIORAL of main is
   attribute BOX_TYPE   : string ;
   signal XLXN_5 : std_logic;
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component counter
      port ( Clock : in    std_logic; 
             CLR   : in    std_logic; 
             Q     : out   std_logic_vector (5 downto 0));
   end component;
   
begin
   XLXI_11 : GND
      port map (G=>XLXN_5);
   
   XLXI_12 : counter
      port map (Clock=>SW,
                CLR=>XLXN_5,
                Q(5 downto 0)=>MN(5 downto 0));
   
end BEHAVIORAL;



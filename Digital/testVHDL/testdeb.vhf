--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : testdeb.vhf
-- /___/   /\     Timestamp : 12/14/2020 18:37:49
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/.Xilinx/testVHDL/testdeb.vhf -w C:/.Xilinx/testVHDL/testdeb.sch
--Design Name: testdeb
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

entity testdeb is
   port ( clockP123 : in    std_logic; 
          sw        : in    std_logic; 
          MN        : out   std_logic_vector (5 downto 0));
end testdeb;

architecture BEHAVIORAL of testdeb is
   attribute BOX_TYPE   : string ;
   signal clk       : std_logic;
   signal XLXN_3    : std_logic;
   signal XLXN_5    : std_logic;
   signal XLXN_6    : std_logic;
   component debounce
      port ( Clock : in    std_logic; 
             sw    : in    std_logic; 
             outp  : out   std_logic);
   end component;
   
   component Clock_Divider
      port ( clk       : in    std_logic; 
             reset     : in    std_logic; 
             clock_out : out   std_logic);
   end component;
   
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
   XLXI_1 : debounce
      port map (Clock=>clk,
                sw=>sw,
                outp=>XLXN_5);
   
   XLXI_2 : Clock_Divider
      port map (clk=>clockP123,
                reset=>XLXN_3,
                clock_out=>clk);
   
   XLXI_3 : GND
      port map (G=>XLXN_3);
   
   XLXI_4 : counter
      port map (Clock=>XLXN_5,
                CLR=>XLXN_6,
                Q(5 downto 0)=>MN(5 downto 0));
   
   XLXI_5 : GND
      port map (G=>XLXN_6);
   
end BEHAVIORAL;



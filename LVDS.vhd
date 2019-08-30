----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:31:51 08/29/2019 
-- Design Name: 
-- Module Name:    LVDS - Behavioral 
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
library UNISIM;  


-- Note that the LVDS connections are on the schematic
-- https://reference.digilentinc.com/_media/reference/programmable-logic/cmod-s6/cmods6_sch.pdf

entity LVDS is
PORT ( B3, B4: IN BIT;
		 A3, A4: OUT BIT
		 

);
end LVDS;
--
architecture Behavioral of LVDS is




begin
end Behavioral


-- LDVS pair
clck_in_IBUFDS: unisim.vcomponents.IBUFDS
port map (
  I  => B3,
  IB => A3,
  O  => clk_200Mhz
);

clck_in_two_IBUFDS: unisim.vcomponents.IBUFDS
port map (
  I  => B4,
  IB => A4,
  O  => clk_200Mhz
);

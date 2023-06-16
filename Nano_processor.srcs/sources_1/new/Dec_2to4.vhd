----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2023 01:23:28 PM
-- Design Name: 
-- Module Name: Dec_2to4 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Dec_2to4 is
    Port ( I : in STD_LOGIC_VECTOR (1 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end Dec_2to4;

architecture Behavioral of Dec_2to4 is

begin
Y(0)<=(not I(0))AND (not I(1))AND EN;
Y(1)<=(I(0))AND (not I(1))AND EN;
Y(2)<=(not I(0))AND (I(1))AND EN;
Y(3)<=(I(0))AND (I(1))AND EN;

end Behavioral;

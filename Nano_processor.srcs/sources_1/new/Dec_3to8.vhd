----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2023 03:02:20 PM
-- Design Name: 
-- Module Name: Dec_3to8 - Behavioral
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

entity Dec_3to8 is
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end Dec_3to8;

architecture Behavioral of Dec_3to8 is
COMPONENT Dec_2to4
PORT(I : in STD_LOGIC_VECTOR (1 downto 0);
     EN : in STD_LOGIC;
     Y : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;
SIGNAL EN0,EN1: STD_LOGIC;
begin
Dec_2to4_0:Dec_2to4
PORT MAP(I=>I(1 downto 0),
         EN=>EN0,
         Y=>Y(3 downto 0));
Dec_2to4_1:Dec_2to4
PORT MAP(I=>I(1 downto 0),
        EN=>EN1,
        Y=>Y(7 downto 4));
EN0<=(NOT(I(2)));
EN1<=(I(2));
end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2023 03:12:20 PM
-- Design Name: 
-- Module Name: Dec_3to8_TB - Behavioral
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

entity Dec_3to8_TB is
--  Port ( );
end Dec_3to8_TB;

architecture Behavioral of Dec_3to8_TB is
COMPONENT Dec_3to8
port(I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;
SIGNAL I:STD_LOGIC_VECTOR (2 downto 0);
SIGNAL EN:STD_LOGIC;
SIGNAL Y:STD_LOGIC_VECTOR (7 downto 0);
begin
UUT:Dec_3to8
PORT MAP(I=>I,
         EN=>EN,
         Y=>Y);
process
begin
I<="001";
WAIT FOR 100ns;
I<="010";
WAIT FOR 100ns;
I<="100";
WAIT FOR 100ns;
I<="011";
WAIT FOR 100ns;
I<="101";
WAIT FOR 100ns;
I<="110";
WAIT FOR 100ns;
I<="000";
WAIT;
end process;
end Behavioral;

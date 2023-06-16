----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 03:24:32 PM
-- Design Name: 
-- Module Name: ADD_SUB_TB - Behavioral
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

entity ADD_SUB_TB is
--  Port ( );
end ADD_SUB_TB;

architecture Behavioral of ADD_SUB_TB is
COMPONENT ADD_SUB
PORT(A : in STD_LOGIC_VECTOR (3 downto 0);
     B : in STD_LOGIC_VECTOR (3 downto 0);
     M : in STD_LOGIC;
     S : out STD_LOGIC_VECTOR (3 downto 0);
     OVF : out STD_LOGIC;
     Z : out STD_LOGIC);
END COMPONENT;
SIGNAL A,B,S:STD_LOGIC_VECTOR (3 downto 0);
SIGNAL M,OVF,Z:STD_LOGIC;
begin
UUT:ADD_SUB
PORT MAP(A=>A,
         B=>B,
         M=>M,
         S=>S,
         OVF=>OVF,
         Z=>Z);
PROCESS
BEGIN
A<="0000";
B<="0001";
M<='1';
WAIT FOR 100ns;
M<='1';
WAIT;
END PROCESS;
end Behavioral;

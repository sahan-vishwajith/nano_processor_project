----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 05:46:51 PM
-- Design Name: 
-- Module Name: Adder_3bit_TB - Behavioral
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

entity Adder_3bit_TB is
--  Port ( );
end Adder_3bit_TB;

architecture Behavioral of Adder_3bit_TB is
COMPONENT Adder_3bit
PORT (A : in STD_LOGIC_VECTOR (2 downto 0);
      Y : out STD_LOGIC_VECTOR (2 downto 0));
END COMPONENT;
SIGNAL A,Y:STD_LOGIC_VECTOR (2 downto 0);
begin
UUT:Adder_3bit
PORT MAP(A=>A,
        Y=>Y);
PROCESS
BEGIN
A<="000";
WAIT FOR 100ns;
A<="100";
WAIT FOR 100ns;
A<="111";
WAIT;
END PROCESS;
end Behavioral;

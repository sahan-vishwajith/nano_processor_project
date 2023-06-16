----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 06:18:56 PM
-- Design Name: 
-- Module Name: MUX_2_to_1_4bit_TB - Behavioral
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

entity MUX_2_to_1_4bit_TB is
--  Port ( );
end MUX_2_to_1_4bit_TB;

architecture Behavioral of MUX_2_to_1_4bit_TB is
COMPONENT MUX_2_TO_1_4bit
PORT(A : in STD_LOGIC_VECTOR (3 downto 0);
     B : in STD_LOGIC_VECTOR (3 downto 0);
     Y : out STD_LOGIC_VECTOR (3 downto 0);
     Load_sel : in STD_LOGIC);
END COMPONENT;
SIGNAL A,B,Y:STD_LOGIC_VECTOR(3 downto 0);
SIGNAL Load_sel:STD_LOGIC;
begin
UUT:MUX_2_TO_1_4bit
PORT MAP(A=>A,
        B=>B,
        Y=>Y,
        Load_sel=>Load_sel);
process
begin
A<="0001";
B<="1000";
Load_sel<='1';
WAIT FOR 100ns;
Load_sel<='0';
WAIT;
END PROCESS;
end Behavioral;

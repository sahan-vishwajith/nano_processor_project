----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 06:36:40 PM
-- Design Name: 
-- Module Name: MUX_2_TO_1_3bit_TB - Behavioral
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

entity MUX_2_TO_1_3bit_TB is
--  Port ( );
end MUX_2_TO_1_3bit_TB;

architecture Behavioral of MUX_2_TO_1_3bit_TB is
COMPONENT MUX_2_TO_1_3bit
PORT(AA : in STD_LOGIC_VECTOR (2 downto 0);
     BB : in STD_LOGIC_VECTOR (2 downto 0);
     YY : out STD_LOGIC_VECTOR (2 downto 0);
     Load_sel : in STD_LOGIC);
END COMPONENT;
SIGNAL AA,BB,YY:STD_LOGIC_VECTOR (2 downto 0);
SIGNAL Load_sel:STD_LOGIC;
begin
UUT:MUX_2_TO_1_3bit
PORT MAP(AA=>AA,
        BB=>BB,
        YY=>YY,
        Load_sel=>Load_sel);
PROCESS
BEGIN
AA<="001";
BB<="100";
Load_sel<='0';
WAIT FOR 100ns;
Load_sel<='1';
WAIT;
END PROCESS;
end Behavioral;

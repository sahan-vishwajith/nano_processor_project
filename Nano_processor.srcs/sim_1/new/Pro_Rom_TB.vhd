----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/01/2023 01:14:34 AM
-- Design Name: 
-- Module Name: Pro_Rom_TB - Behavioral
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

entity Pro_Rom_TB is
--  Port ( );
end Pro_Rom_TB;

architecture Behavioral of Pro_Rom_TB is
COMPONENT Pro_Rom
    Port ( Mem_sel : in STD_LOGIC_VECTOR (2 downto 0);
       INS : out STD_LOGIC_VECTOR (11 downto 0));
END COMPONENT;
SIGNAL Mem_sel:STD_LOGIC_VECTOR (2 downto 0);
SIGNAL INS: STD_LOGIC_VECTOR (11 downto 0);
begin
UUT:Pro_Rom
PORT MAP(Mem_sel=>Mem_sel,
        INS=>INS);
process
begin
Mem_sel<="000";
WAIT FOR 100ns;
Mem_sel<="001";
WAIT;
end process;
end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 06:32:29 PM
-- Design Name: 
-- Module Name: MUX_2_TO_1_3bit - Behavioral
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

entity MUX_2_TO_1_3bit is
    Port ( AA : in STD_LOGIC_VECTOR (2 downto 0);
           BB : in STD_LOGIC_VECTOR (2 downto 0);
           YY : out STD_LOGIC_VECTOR (2 downto 0);
           Load_sel : in STD_LOGIC);
end MUX_2_TO_1_3bit;

architecture Behavioral of MUX_2_TO_1_3bit is

begin
process(Load_sel,AA,BB)
begin
if(Load_sel='0') then
    YY<=AA;
elsif(Load_sel='1') then
    YY<=BB;
else
    null;
end if;
end process;
end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 06:14:58 PM
-- Design Name: 
-- Module Name: MUX_2_TO_1_4bit - Behavioral
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

entity MUX_2_TO_1_4bit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0);
           Load_sel : in STD_LOGIC);
end MUX_2_TO_1_4bit;

architecture Behavioral of MUX_2_TO_1_4bit is

begin
process(Load_sel,A,B)
begin 
if(Load_sel='0') then
    Y<=A;
elsif(Load_sel='1') then
    Y<=B;
else
    null;
end if;
end process;
end Behavioral;

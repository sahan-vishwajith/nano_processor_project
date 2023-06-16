----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2023 12:03:15 PM
-- Design Name: 
-- Module Name: Slow_Clk_TB - Behavioral
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

entity Slow_Clk_TB is
--  Port ( );
end Slow_Clk_TB;

architecture Behavioral of Slow_Clk_TB is
COMPONENT Slow_Clk
    PORT(Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
END COMPONENT;
SIGNAL Clk_in,Clk_out: STD_LOGIC:='0';
begin
UUT:Slow_clk
    port map(Clk_in=>Clk_in,
    Clk_out=>Clk_out);
process 
begin
Clk_in<=not(Clk_in);
WAIT FOR 5ns;
end process;
end Behavioral;

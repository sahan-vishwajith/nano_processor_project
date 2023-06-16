----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2023 01:21:49 PM
-- Design Name: 
-- Module Name: Dec_2_to_4 - Behavioral
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

entity Dec_2_to_4 is
    Port ( In : in STD_LOGIC_VECTOR (1 downto 0);
           En : in STD_LOGIC;
           Out : out STD_LOGIC_VECTOR (3 downto 0));
end Dec_2_to_4;

architecture Behavioral of Dec_2_to_4 is

begin


end Behavioral;

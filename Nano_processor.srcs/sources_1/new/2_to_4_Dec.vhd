----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2023 01:19:04 PM
-- Design Name: 
-- Module Name: 2_to_4_Dec - Behavioral
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

entity 2_to_4_Dec is
    Port ( I : in STD_LOGIC_VECTOR (1 downto 0);
           En : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end 2_to_4_Dec;

architecture Behavioral of 2_to_4_Dec is

begin


end Behavioral;

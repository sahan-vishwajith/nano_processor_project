----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/01/2023 01:02:16 AM
-- Design Name: 
-- Module Name: Pro_Rom - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pro_Rom is
    Port ( Mem_sel : in STD_LOGIC_VECTOR (2 downto 0);
           INS : out STD_LOGIC_VECTOR (11 downto 0));
end Pro_Rom;

architecture Behavioral of Pro_Rom is
type Rom is array (0 to 7) of STD_LOGIC_VECTOR(11 downto 0);
SIGNAL program_rom:Rom :=(--1 0 R R R 0 0 0 d d d d
                          "100010000011",
                          "100100000001",
                          "010100000000",
                          "001110010000",
                          "000010100000",
                          "110010000111",
                          "110000000011",
                          "110000000111"); 
begin
INS<=program_rom(to_integer(unsigned(Mem_sel)));

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 05:03:50 PM
-- Design Name: 
-- Module Name: Adder_3bit - Behavioral
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

entity Adder_3bit is
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC_VECTOR (2 downto 0));
end Adder_3bit;

architecture Behavioral of Adder_3bit is
COMPONENT FA
PORT(A : in STD_LOGIC;
     B : in STD_LOGIC;
     C_in : in STD_LOGIC;
     S : out STD_LOGIC;
     C_out : out STD_LOGIC);
END COMPONENT;
SIGNAL C_K:STD_LOGIC_VECTOR(2 downto 0);
begin
FA_0:FA
PORT MAP(A=>A(0),
        B=>'1',
        C_in=>'0',
        S=>Y(0),
        C_out=>C_K(0));
FA_1:FA
PORT MAP(A=>A(1),
        B=>'0',
        C_in=>C_K(0),
        S=>Y(1),
        C_out=>C_K(1));
FA_2:FA
PORT MAP(A=>A(2),
        B=>'0',
        C_in=>C_K(1),
        S=>Y(2),
        C_out=>C_K(2));
end Behavioral;

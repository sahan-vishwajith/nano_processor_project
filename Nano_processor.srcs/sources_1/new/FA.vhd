----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 01:54:50 PM
-- Design Name: 
-- Module Name: FA - Behavioral
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

entity FA is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S : out STD_LOGIC;
           C_out : out STD_LOGIC);
end FA;

architecture Behavioral of FA is
COMPONENT HA
PORT(  A : in STD_LOGIC;
       B : in STD_LOGIC;
       C_out : out STD_LOGIC;
       S : out STD_LOGIC);
END COMPONENT;
SIGNAL C0,S0,C1:STD_LOGIC;
begin
HA_0:HA
PORT MAP(A=>A,
        B=>B,
        C_out=>C0,
        S=>S0);
HA_1:HA
PORT MAP(A=>S0,
        B=>C_in,
        C_out=>C1,
        S=>S);
C_out<= C0 OR C1;
end Behavioral;

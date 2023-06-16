----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 02:26:27 PM
-- Design Name: 
-- Module Name: ADD_SUB - Behavioral
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

entity ADD_SUB is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           M : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           OVF : out STD_LOGIC;
           Z : out STD_LOGIC);
end ADD_SUB;


architecture Behavioral of ADD_SUB is
COMPONENT FA
PORT( A : in STD_LOGIC;
      B : in STD_LOGIC;
      C_in : in STD_LOGIC;
      S : out STD_LOGIC;
      C_out : out STD_LOGIC);
END COMPONENT;
SIGNAL C0,C1,C2,C3,B0,B1,B2,B3:STD_LOGIC;
SIGNAL RCA_S:STD_LOGIC_VECTOR(3 downto 0);
begin
B0<=B(0) XOR M;
B1<=B(1) XOR M;
B2<=B(2) XOR M;
B3<=B(3) XOR M;
FA_0:FA
PORT MAP(A=>A(0),
        B=>B0,
        C_in=>M,
        S=>RCA_S(0),
        C_out=>C0);
FA_1:FA
PORT MAP(A=>A(1),
        B=>B1,
        C_in=>C0,
        S=>RCA_S(1),
        C_out=>C1);
FA_2:FA
PORT MAP(A=>A(2),
        B=>B2,
        C_in=>C1,
        S=>RCA_S(2),
        C_out=>C2);
FA_3:FA
PORT MAP(A=>A(3),
        B=>B3,
        C_in=>C2,
        S=>RCA_S(3),
        C_out=>C3);
S<=RCA_S;
OVF<= C3;
Z <= NOT(RCA_S(0)OR RCA_S(1) OR RCA_S(2) OR RCA_S(3));
end Behavioral;

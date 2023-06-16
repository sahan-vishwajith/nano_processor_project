----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 02:02:57 PM
-- Design Name: 
-- Module Name: FA_TB - Behavioral
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

entity FA_TB is
--  Port ( );
end FA_TB;

architecture Behavioral of FA_TB is
COMPONENT FA
PORT(A : in STD_LOGIC;
     B : in STD_LOGIC;
     C_in : in STD_LOGIC;
     S : out STD_LOGIC;
     C_out : out STD_LOGIC);
END COMPONENT;
SIGNAL A,B,C_in,S,C_out:STD_LOGIC;
begin
UUT:FA
PORT MAP(A=>A,
        B=>B,
        C_in=>C_in,
        S=>S,
        C_out=>C_out);
PROCESS
BEGIN
A<='1';
B<='1';
C_in<='1';
WAIT FOR 100ns;
A<='1';
B<='0';
C_in<='1';
WAIT FOR 100ns;
A<='1';
B<='1';
C_in<='0';
WAIT;
END PROCESS;
end Behavioral;

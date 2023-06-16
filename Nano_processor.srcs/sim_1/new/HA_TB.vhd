----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 01:49:14 PM
-- Design Name: 
-- Module Name: HA_TB - Behavioral
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

entity HA_TB is
--  Port ( );
end HA_TB;

architecture Behavioral of HA_TB is
COMPONENT HA
 Port ( A : in STD_LOGIC;
        B : in STD_LOGIC;
        C_out : out STD_LOGIC;
        S : out STD_LOGIC);
END COMPONENT;
SIGNAL A,B,C_out,S:STD_LOGIC;
begin
UUT:HA
PORT MAP(A=>A,
        B=>B,
        C_out=>C_out,
        S=>S);
PROCESS 
BEGIN
A<='1';
B<='1';
WAIT FOR 100ns;
A<='0';
WAIT FOR 100ns;
B<='0';
WAIT;
END PROCESS;
end Behavioral;

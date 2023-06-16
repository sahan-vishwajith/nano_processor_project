----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/29/2023 04:20:29 PM
-- Design Name: 
-- Module Name: MUX_8_to_1_1bit_TB - Behavioral
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

entity MUX_8_to_1_1bit_TB is
--  Port ( );
end MUX_8_to_1_1bit_TB;

architecture Behavioral of MUX_8_to_1_1bit_TB is
component MUX_8_to_1_1bit
Port ( Reg_sel : in STD_LOGIC_VECTOR (2 downto 0);
           R0 : in STD_LOGIC;
           R1 : in STD_LOGIC;
           R2 : in STD_LOGIC;
           R3 : in STD_LOGIC;
           R4 : in STD_LOGIC;
           R5 : in STD_LOGIC;
           R6 : in STD_LOGIC;
           R7 : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;
signal Reg_sel:STD_LOGIC_VECTOR (2 downto 0);
signal R0,R1,R2,R3,R4,R5,R6,R7,Y:STD_LOGIC:='0';
begin
UUT:MUX_8_to_1_1bit
PORT MAP(Reg_sel=>Reg_sel,R0=>R0,R1=>R1,R2=>R2,
        R3=>R3,R4=>R4,R5=>R5,R6=>R6,R7=>R7,Y=>Y);
process 
begin
R1<='1';
Reg_sel<="001";
WAIT FOR 100ns;
R2<='1';
Reg_sel<="010";
WAIT FOR 100ns;
R4<='1';
Reg_sel<="100";
WAIT ;
end process;
end Behavioral;

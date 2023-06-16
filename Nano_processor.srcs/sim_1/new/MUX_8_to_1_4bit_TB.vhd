----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/29/2023 10:32:00 AM
-- Design Name: 
-- Module Name: MUX_8_to_1_4bit_TB - Behavioral
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

entity MUX_8_to_1_4bit_TB is
--  Port ( );
end MUX_8_to_1_4bit_TB;

architecture Behavioral of MUX_8_to_1_4bit_TB is
COMPONENT MUX_8_to_1_4bit
Port ( Reg_sel : in STD_LOGIC_VECTOR (2 downto 0);
           R0 : in STD_LOGIC_VECTOR (3 downto 0);
           R1 : in STD_LOGIC_VECTOR (3 downto 0);
           R2 : in STD_LOGIC_VECTOR (3 downto 0);
           R3 : in STD_LOGIC_VECTOR (3 downto 0);
           R4 : in STD_LOGIC_VECTOR (3 downto 0);
           R5 : in STD_LOGIC_VECTOR (3 downto 0);
           R6 : in STD_LOGIC_VECTOR (3 downto 0);
           R7 : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;
SIGNAL Reg_sel:STD_LOGIC_VECTOR (2 downto 0);
SIGNAL R0,R1,R2,R3,R4,R5,R6,R7,Y :STD_LOGIC_VECTOR (3 downto 0):="0001";
begin
UUT:MUX_8_to_1_4bit
PORT MAP(Reg_sel=>Reg_sel,
        R0=>R0,R1=>R1,R2=>R2,R3=>R3,R4=>R4,
        R5=>R5,R6=>R6,R7=>R7,Y=>Y);
process
begin 
R0<="1111";
R1<="0001";
R2<="0010";
R3<="0011";
R4<="0100";
R5<="0101";
R6<="0110";
R7<="0111";
Reg_sel<="000";
WAIT FOR 100ns;
Reg_sel<="001";
WAIT FOR 100ns;
Reg_sel<="010";
WAIT FOR 100ns;
Reg_sel<="011";
WAIT FOR 100ns;
Reg_sel<="100";
WAIT FOR 100ns;
Reg_sel<="101";
WAIT FOR 100ns;
Reg_sel<="110";
WAIT;
END PROCESS;
end Behavioral;

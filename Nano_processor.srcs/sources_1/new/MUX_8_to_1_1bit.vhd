----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/29/2023 11:25:56 AM
-- Design Name: 
-- Module Name: MUX_8_to_1_1bit - Behavioral
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

entity MUX_8_to_1_1bit is
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
end MUX_8_to_1_1bit;

architecture Behavioral of MUX_8_to_1_1bit is
SIGNAL S0,S1,S2,S3,S4,S5,S6,S7:STD_LOGIC;
begin

S0<='Z' when Reg_sel="000" else R0;
S1<='Z' when Reg_sel="001" else R1;
S2<='Z' when Reg_sel="010" else R2;
S3<='Z' when Reg_sel="011" else R3;
S4<='Z' when Reg_sel="100" else R4;
S5<='Z' when Reg_sel="101" else R5;
S6<='Z' when Reg_sel="110" else R6;
S7<='Z' when Reg_sel="111" else R7;
Y<=S0 when Reg_sel="000" else
   S1 when Reg_sel="001" else
   S2 when Reg_sel="010" else
   S3 when Reg_sel="011" else
   S4 when Reg_sel="100" else
   S5 when Reg_sel="101" else
   S6 when Reg_sel="110" else
   S7;

end Behavioral;

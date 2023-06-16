----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/29/2023 10:21:38 AM
-- Design Name: 
-- Module Name: MUX_8_to_1_4bit - Behavioral
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

entity MUX_8_to_1_4bit is
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
end MUX_8_to_1_4bit;

architecture Behavioral of MUX_8_to_1_4bit is

begin
process(Reg_sel,R0,R1,R2,R3,R4,R5,R6,R7)
    begin
    if Reg_sel="000" then
        Y<=R0;
    elsif Reg_sel="001" then
        Y<=R1;
    elsif Reg_sel="010" then
        Y<=R2;            
    elsif Reg_sel="011" then
        Y<=R3;
    elsif Reg_sel="100" then
        Y<=R4;
    elsif Reg_sel="101" then
        Y<=R5;
    elsif Reg_sel="110" then
        Y<=R6;
    elsif Reg_sel="111" then
        Y<=R7;
    else
        null;
    end if;
end process;
end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2023 10:18:17 PM
-- Design Name: 
-- Module Name: ISN_DEC - Behavioral
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

entity ISN_DEC is
    Port ( Isn_bus : in STD_LOGIC_VECTOR (11 downto 0);
           check_for_jump : in STD_LOGIC_VECTOR (3 downto 0);
           Reg_en : out STD_LOGIC_VECTOR (2 downto 0);
           Load_select : out STD_LOGIC;
           Imm_val : out STD_LOGIC_VECTOR (3 downto 0);
           Reg_sel_1 : out STD_LOGIC_VECTOR (2 downto 0);
           Reg_sel_2 : out STD_LOGIC_VECTOR (2 downto 0);
           AddSub : out STD_LOGIC;
           Jump_flag : out STD_LOGIC;
           Address_to_jump : out STD_LOGIC_VECTOR (2 downto 0));
end ISN_DEC;

architecture Behavioral of ISN_DEC is
SIGNAL opcode:std_logic_vector(1 downto 0); 
signal ADD,MOV,JZR,NEG,AL:std_logic;
signal A_A:std_logic_vector(2 downto 0);

begin
ADD<=(not(Isn_bus(11)))and (not(Isn_bus(10)));
MOV<=((Isn_bus(11)))and (not(Isn_bus(10)));
JZR<=((Isn_bus(11)))and ((Isn_bus(10)));
NEG<=(not(Isn_bus(11)))and ((Isn_bus(10)));
AL<=ADD or MOV or NEG; 
A_A<=(others=>AL);
Reg_en <= A_A AND Isn_bus(9 downto 7);
Load_select <=Isn_bus(11);
Imm_val <=Isn_bus(3 downto 0);
Reg_sel_1 <=Isn_bus(9 downto 7);
Reg_sel_2 <=Isn_bus(6 downto 4);
AddSub <=NEG and (not(ADD));
Jump_flag<=(check_for_jump(3) OR check_for_jump(2) OR check_for_jump(1) OR check_for_jump(0) OR AL);
Address_to_jump <= Isn_bus(2 downto 0);

end Behavioral;

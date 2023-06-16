----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2023 07:07:09 PM
-- Design Name: 
-- Module Name: Instruction_decoder - Behavioral
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

entity Instruction_decoder is
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
end Instruction_decoder;

architecture Behavioral of Instruction_decoder is

begin
Reg_en <=Isn_bus(9 downto 7);
Load_select <=Isn_bus(11);
Imm_val <=Isn_bus(3 downto 0);
Reg_sel_1 <=Isn_bus(9 downto 7);
Reg_sel_2 <=Isn_bus(6 downto 4);
AddSub <=(Isn_bus(11) AND Isn_bus(10));
Jump_flag<=(check_for_jump(3) OR check_for_jump(2) OR check_for_jump(1) OR check_for_jump(0));
Address_to_jump <= Isn_bus(2 downto 0);
end Behavioral;

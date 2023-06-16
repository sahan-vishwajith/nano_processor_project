----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2023 10:07:14 PM
-- Design Name: 
-- Module Name: TB_1 - Behavioral
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

entity TB_1 is
--  Port ( );
end TB_1;

architecture Behavioral of Ins_decoder_TB is
COMPONENT Instruction_decoder
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
END COMPONENT;
SIGNAL Isn_bus :STD_LOGIC_VECTOR (11 downto 0);
SIGNAL check_for_jump,Imm_val: STD_LOGIC_VECTOR (3 downto 0);
SIGNAL Reg_en,Reg_sel_1,Reg_sel_2,Address_to_jump:STD_LOGIC_VECTOR (2 downto 0);
SIGNAL AddSub,Jump_flag,Load_select:STD_LOGIC;
begin
UUT:Instruction_decoder
PORT MAP(Isn_bus=>Isn_bus,
        check_for_jump=>check_for_jump,
        Imm_val=>Imm_val,
        Reg_en=>Reg_en,
        Reg_sel_1=>Reg_sel_1,
        Reg_sel_2=>Reg_sel_2,
        Address_to_jump=>Address_to_jump,
        AddSub=>AddSub,
        Jump_flag=>Jump_flag,
        Load_select=>Load_select);
process 
begin 
Isn_bus<="000000000000";
check_for_jump<="0100";
WAIT;
end process;
end Behavioral;

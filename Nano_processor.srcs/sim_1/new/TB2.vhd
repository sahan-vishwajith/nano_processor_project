----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2023 10:20:24 PM
-- Design Name: 
-- Module Name: TB2 - Behavioral
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

entity TB2 is
--  Port ( );
end TB2;

architecture Behavioral of TB2 is
COMPONENT ISN_DEC
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
UUT:ISN_DEC
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

Isn_bus<="101110000000";
check_for_jump<="0000";
WAIT for 50ns;
Isn_bus<="001110010000";
check_for_jump<="0000";
WAIT for 100ns;
Isn_bus<="010100000000";
check_for_jump<="0000";
WAIT for 100ns;
Isn_bus<="110000000100";
check_for_jump<="0000";
WAIT for 100ns;

end process;


end Behavioral;

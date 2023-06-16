----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2023 01:55:27 PM
-- Design Name: 
-- Module Name: Nano_Processor_0 - Behavioral
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

entity Nano_Processor_0 is
    Port ( Reg_out : out STD_LOGIC_VECTOR (3 downto 0);
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Zero : out STD_LOGIC;
           OVF : out STD_LOGIC;
           anode:out STD_LOGIC_VECTOR (3 downto 0);
           Seg_out:out STD_LOGIC_VECTOR (6 downto 0));
end Nano_Processor_0;

architecture Behavioral of Nano_Processor_0 is
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
COMPONENT Register_Bank
Port ( Reg_En : in STD_LOGIC_VECTOR (2 downto 0);
           Data_in : in STD_LOGIC_VECTOR (3 downto 0);
           Clk : in STD_LOGIC;
           Res : in STD_LOGIC;
           Data_out0 : out STD_LOGIC_VECTOR (3 downto 0);
           Data_out1 : out STD_LOGIC_VECTOR (3 downto 0);
           Data_out2 : out STD_LOGIC_VECTOR (3 downto 0);
           Data_out3 : out STD_LOGIC_VECTOR (3 downto 0);
           Data_out4 : out STD_LOGIC_VECTOR (3 downto 0);
           Data_out5 : out STD_LOGIC_VECTOR (3 downto 0);
           Data_out6 : out STD_LOGIC_VECTOR (3 downto 0);
           Data_out7 : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;
component MUX_8_to_1_4bit
port ( Reg_sel : in STD_LOGIC_VECTOR (2 downto 0);
           R0 : in STD_LOGIC_VECTOR (3 downto 0);
           R1 : in STD_LOGIC_VECTOR (3 downto 0);
           R2 : in STD_LOGIC_VECTOR (3 downto 0);
           R3 : in STD_LOGIC_VECTOR (3 downto 0);
           R4 : in STD_LOGIC_VECTOR (3 downto 0);
           R5 : in STD_LOGIC_VECTOR (3 downto 0);
           R6 : in STD_LOGIC_VECTOR (3 downto 0);
           R7 : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end component;
COMPONENT ADD_SUB
Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
       B : in STD_LOGIC_VECTOR (3 downto 0);
       M : in STD_LOGIC;
       S : out STD_LOGIC_VECTOR (3 downto 0);
       OVF : out STD_LOGIC;
       Z : out STD_LOGIC);
END COMPONENT;
COMPONENT MUX_2_TO_1_4bit
PORT ( A : in STD_LOGIC_VECTOR (3 downto 0);
       B : in STD_LOGIC_VECTOR (3 downto 0);
       Y : out STD_LOGIC_VECTOR (3 downto 0);
       Load_sel : in STD_LOGIC);
END COMPONENT;
COMPONENT Pro_Rom
PORT( Mem_sel : in STD_LOGIC_VECTOR (2 downto 0);
           INS : out STD_LOGIC_VECTOR (11 downto 0)); 
END COMPONENT;
COMPONENT Program_counter
PORT( address : in STD_LOGIC_VECTOR (2 downto 0):="000";
           Mem_sel : out STD_LOGIC_VECTOR (2 downto 0);
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC);
END COMPONENT;
COMPONENT Adder_3bit
PORT ( A : in STD_LOGIC_VECTOR (2 downto 0);
       Y : out STD_LOGIC_VECTOR (2 downto 0));
END COMPONENT;
COMPONENT MUX_2_TO_1_3bit
PORT ( AA : in STD_LOGIC_VECTOR (2 downto 0);
       BB : in STD_LOGIC_VECTOR (2 downto 0);
       YY : out STD_LOGIC_VECTOR (2 downto 0);
       Load_sel : in STD_LOGIC);
END COMPONENT;
COMPONENT Sev_Seg
PORT ( anode : out STD_LOGIC_VECTOR (3 downto 0);
       Seg_in : in STD_LOGIC_VECTOR (3 downto 0);
       Seg_out : out STD_LOGIC_VECTOR (6 downto 0));
END COMPONENT;
SIGNAL Load_select,AddSub,Jump_flag:STD_LOGIC;
SIGNAL REG_EN,Reg_sel_1,Reg_sel_2,Address_to_jump,MEM_SEL,ADDRESS,PC:STD_LOGIC_VECTOR (2 downto 0);
SIGNAL Imm_val:STD_LOGIC_VECTOR (3 downto 0);
SIGNAL Data_out0,Data_out1,Data_out2,Data_out3,Data_out4,Data_out5,Data_out6,Data_out7,y0,y1:STD_LOGIC_VECTOR (3 downto 0);
SIGNAL ADDSUB_OUT,MUX2_1_4:STD_LOGIC_VECTOR (3 downto 0);
SIGNAL INS_OUT:STD_LOGIC_VECTOR (11 downto 0);
begin
ISN_DEC_0:ISN_DEC
PORT MAP(Isn_bus=>INS_OUT,
        check_for_jump=>Y0,
        Reg_en=>Reg_en,
        Load_select=>Load_select,
        Imm_val=>Imm_val,
        Reg_sel_1=>Reg_sel_1,
        Reg_sel_2=>Reg_sel_2,
        AddSub=>AddSub,
        Jump_flag=>Jump_flag,
        Address_to_jump=>Address_to_jump);
Register_Bank_0:Register_Bank
PORT MAP(Reg_En=>Reg_en,
        Data_in=>MUX2_1_4,
        Clk=>Clk,
        Res=>Res,
        Data_out0=>Data_out0,
        Data_out1=>Data_out1,
        Data_out2=>Data_out2,
        Data_out3=>Data_out3,
        Data_out4=>Data_out4,
        Data_out5=>Data_out5,
        Data_out6=>Data_out6,
        Data_out7=>Data_out7);
MUX_8_to_1_4bit_0:MUX_8_to_1_4bit
port map(Reg_sel=>Reg_sel_1,  
           R0 =>Data_out0, 
           R1 =>Data_out1,
           R2 =>Data_out2,
           R3 =>Data_out3,
           R4 =>Data_out4,
           R5 =>Data_out5,
           R6 =>Data_out6,
           R7 =>Data_out7,
           Y=>Y0 );
MUX_8_to_1_4bit_1:MUX_8_to_1_4bit
port map(Reg_sel=>Reg_sel_2,  
         R0 =>Data_out0, 
         R1 =>Data_out1,
         R2 =>Data_out2,
         R3 =>Data_out3,
         R4 =>Data_out4,
         R5 =>Data_out5,
         R6 =>Data_out6,
         R7 =>Data_out7,
         Y=>Y1 );
ADD_SUB_0:ADD_SUB
PORT MAP(A=>Y1, 
       B =>Y0,
       M =>AddSub,
       S =>ADDSUB_OUT,
       OVF =>OVF,
       Z =>Zero);
MUX_2_TO_1_4bit_0:MUX_2_TO_1_4bit
PORT MAP( A => ADDSUB_OUT,
          B => Imm_val,
          Y => MUX2_1_4,
          Load_sel=>  Load_select); 
Pro_Rom_0:Pro_Rom
PORT MAP(Mem_sel=>MEM_SEL,
        INS=>INS_OUT);
Program_counter_0:Program_counter
PORT MAP(address=>PC, 
           Mem_sel=>MEM_SEL, 
           Res=>Res, 
           Clk=>Clk); 
Adder_3bit_0:Adder_3bit
PORT MAP(A=>MEM_SEL,
        Y=>ADDRESS);
MUX_2_TO_1_3bit_0:MUX_2_TO_1_3bit
PORT MAP(AA=>Address_to_jump,
        BB=>ADDRESS,
        YY=>PC,
        Load_sel=>Jump_flag);
Sev_Seg_0:Sev_Seg
PORT MAP( anode=>anode,
          Seg_in=>Data_out7, 
          Seg_out=>Seg_out);
Reg_out<=Data_out7;
end Behavioral;

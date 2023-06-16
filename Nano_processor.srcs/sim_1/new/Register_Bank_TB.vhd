----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2023 03:57:03 PM
-- Design Name: 
-- Module Name: Register_Bank_TB - Behavioral
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

entity Register_Bank_TB is
--  Port ( );
end Register_Bank_TB;

architecture Behavioral of Register_Bank_TB is
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
SIGNAL Reg_En:STD_LOGIC_VECTOR (2 downto 0);
SIGNAL Data_in:STD_LOGIC_VECTOR (3 downto 0);
SIGNAL Clk,Res:STD_LOGIC;
SIGNAL Data_out0,Data_out1,Data_out2,Data_out3,Data_out4,Data_out5,Data_out6,Data_out7:STD_LOGIC_VECTOR (3 downto 0);
begin
UUT:Register_Bank
    PORT MAP(Reg_En=>Reg_En,
            Data_in=>Data_in,
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
PROCESS
BEGIN
--CODE
WAIT;
END PROCESS;
end Behavioral;

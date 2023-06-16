----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2023 01:13:00 PM
-- Design Name: 
-- Module Name: Register_Bank - Behavioral
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

entity Register_Bank is
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
end Register_Bank;

architecture Behavioral of Register_Bank is
COMPONENT Dec_3to8
port(I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;
COMPONENT Registers
    port(D : in STD_LOGIC_VECTOR (3 downto 0);
           En : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Res : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;
COMPONENT Slow_Clk
Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
END COMPONENT;
SIGNAL Y0:STD_LOGIC_VECTOR (7 downto 0);
SIGNAL Clk_slow:STD_LOGIC;
begin
Slow_Clk_0:Slow_Clk
port map(Clk_in=>Clk,
         Clk_out=>Clk_slow);
Dec_3to8_0:Dec_3to8
port map(I=>Reg_En,
         EN=>'1',
         Y=>Y0);
Registers_0:Registers
port map(D=>"0000",
         Clk=>Clk_slow,
         En=>'0',
         Res=>Res,
         Q=>Data_out0);
Registers_1:Registers
port map(D=>Data_in,
         Clk=>Clk_slow,
         En=>Y0(1),
         Res=>Res,
         Q=>Data_out1);
Registers_2:Registers
port map(D=>Data_in,
         Clk=>Clk_slow,
         En=>Y0(2),
         Res=>Res,
         Q=>Data_out2);
Registers_3:Registers
port map(D=>Data_in,
         Clk=>Clk_slow,
         En=>Y0(3),
         Res=>Res,
         Q=>Data_out3);
Registers_4:Registers
port map(D=>Data_in,
         Clk=>Clk_slow,
         En=>Y0(4),
         Res=>Res,
         Q=>Data_out4);
Registers_5:Registers
port map(D=>Data_in,
         Clk=>Clk_slow,
         En=>Y0(5),
         Res=>Res,
         Q=>Data_out5);
Registers_6:Registers
port map(D=>Data_in,
         Clk=>Clk_slow,
         En=>Y0(6),
         Res=>Res,
         Q=>Data_out6);
Registers_7:Registers 
port map(D=>Data_in,
         Clk=>Clk_slow,
         En=>Y0(7),
         Res=>Res,
         Q=>Data_out7);        

end Behavioral;

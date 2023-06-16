----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2023 12:17:04 PM
-- Design Name: 
-- Module Name: Registers - Behavioral
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

entity Registers is
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           En : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Res : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end Registers;

architecture Behavioral of Registers is
COMPONENT D_FF
    PORT( D : in STD_LOGIC;
          Clk : in STD_LOGIC;
          Res : in STD_LOGIC;
          En: in STD_LOGIC;
          Q : out STD_LOGIC;
          Q_bar : out STD_LOGIC);
END COMPONENT;

SIGNAL D0,D1,D2,D3,Q0,Q1,Q2,Q3,EN_status:STD_LOGIC;
begin
D0<=D(0);
D1<=D(1);
D2<=D(2);
D3<=D(3);
EN_status<=En;
D_FF0:D_FF
port map(D=>D0,
        Clk=>Clk,
        En=>EN_status,
        Res=>Res,
        Q=>Q0);
D_FF1:D_FF
port map(D=>D1,
         Clk=>Clk,
         En=>EN_status,
         Res=>Res,
         Q=>Q1);
D_FF2:D_FF
port map(D=>D2,
         Clk=>Clk,
         En=>EN_status,
         Res=>Res,
         Q=>Q2); 
D_FF3:D_FF
port map(D=>D3,
         Clk=>Clk,
         En=>EN_status,
         Res=>Res,
         Q=>Q3);   
Q(0)<=Q0;
Q(1)<=Q1;
Q(2)<=Q2;
Q(3)<=Q3;       
end Behavioral;

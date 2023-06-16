----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2023 11:19:51 AM
-- Design Name: 
-- Module Name: DFF_TB - Behavioral
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

entity DFF_TB is
--  Port ( );
end DFF_TB;

architecture Behavioral of DFF_TB is
COMPONENT D_FF
    Port ( D : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Res : in STD_LOGIC;
           En : in STD_LOGIC;
           Q : out STD_LOGIC;
           Q_bar : out STD_LOGIC);
END COMPONENT;
SIGNAL D,Clk,Res,Q,Q_bar,En:STD_LOGIC:='0';
begin
UUT:D_FF
    port map(D=>D,
    Clk=>Clk,
    Res=>Res,
    Q=>Q,
    En=>En,
    Q_bar=>Q_bar);
process 
begin
Clk<='1';
WAIT FOR 10ns;
Clk<='0';
WAIT FOR 10ns;
end process;
process
begin
En<='1';
D<='1';
WAIT FOR 100ns;
En<='0';
WAIT FOR 100ns;
D<='0';
Res<='0';
WAIT FOR 100ns;
end process;
end Behavioral;

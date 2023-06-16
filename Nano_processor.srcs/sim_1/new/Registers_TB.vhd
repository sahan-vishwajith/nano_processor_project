----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2023 12:36:52 PM
-- Design Name: 
-- Module Name: Registers_TB - Behavioral
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

entity Registers_TB is
--  Port ( );
end Registers_TB;

architecture Behavioral of Registers_TB is
COMPONENT Registers
    port(D : in STD_LOGIC_VECTOR (3 downto 0);
           En : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Res : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;
SIGNAL En,Clk,Res: STD_LOGIC:='0';
SIGNAL D,Q:STD_LOGIC_VECTOR(3 downto 0):="0000";
begin
UUT:Registers
port map(D=>D,
        En=>En,
        Clk=>Clk,
        Res=>Res,
        Q=>Q);
process
begin
Clk<=not(Clk);
WAIT FOR 5ns;
end process;
process 
begin
En<='0';
D<="0001";
WAIT FOR 100ns;
D<="1000";
WAIT FOR 100ns;
Res<='1';
WAIT;
END PROCESS;
end Behavioral;

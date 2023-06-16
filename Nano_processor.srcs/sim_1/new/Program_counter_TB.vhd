----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/01/2023 01:44:06 AM
-- Design Name: 
-- Module Name: Program_counter_TB - Behavioral
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

entity Program_counter_TB is
--  Port ( );
end Program_counter_TB;

architecture Behavioral of Program_counter_TB is
COMPONENT Program_counter
PORT (address : in STD_LOGIC_VECTOR (2 downto 0);
           Mem_sel : out STD_LOGIC_VECTOR (2 downto 0);
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC);
END COMPONENT;
SIGNAL address,Mem_sel:STD_LOGIC_VECTOR (2 downto 0);
SIGNAL Res,Clk:STD_LOGIC:='0';
begin
UUT:Program_counter
PORT MAP(address=>address,
        Mem_sel=>Mem_sel,
        Res=>Res,
        Clk=>Clk);
process
begin
Clk<=not(Clk);
wait for 1ns;
end process;
process
begin
Res<='1';
address<="000";
wait for 100ns;
address<="100";
wait for 100ns;
address<="101";
wait;
-----
--your code here
-----
end process;
end Behavioral;

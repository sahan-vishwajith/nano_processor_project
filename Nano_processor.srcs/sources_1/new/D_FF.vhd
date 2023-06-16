----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2023 11:13:17 AM
-- Design Name: 
-- Module Name: D_FF - Behavioral
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

entity D_FF is
    Port ( D : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Res : in STD_LOGIC;
           En: in STD_LOGIC;
           Q : out STD_LOGIC;
           Q_bar : out STD_LOGIC);
end D_FF;

architecture Behavioral of D_FF is

begin
    process (Clk) begin
        if(rising_edge(Clk)) then
            if(Res ='1') then
                Q<='0';
                Q_bar<='1';
            elsif(En='1') then 
                Q<=D;
                Q_bar<=not(D);
            end if;
       end if;
end process; 

end Behavioral;

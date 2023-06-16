----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/01/2023 01:34:59 AM
-- Design Name: 
-- Module Name: Program_counter - Behavioral
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

entity Program_counter is
    Port ( address : in STD_LOGIC_VECTOR (2 downto 0):="000";
           Mem_sel : out STD_LOGIC_VECTOR (2 downto 0);
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC);
end Program_counter;

architecture Behavioral of Program_counter is
COMPONENT D_FF
PORT (D : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Res : in STD_LOGIC;
           En: in STD_LOGIC;
           Q : out STD_LOGIC;
           Q_bar : out STD_LOGIC);
END COMPONENT;
component Slow_Clk
Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
end component;
SIGNAL Clk_slow:STD_LOGIC;
begin
Slow_Clk_0:Slow_Clk
port map(Clk_in=>Clk,
        Clk_out=>Clk_slow);
D_FF_0:D_FF
PORT MAP(D=>address(0),
        Res=>Res,
        En=>'1',
        Clk=>Clk_slow,
        Q=>Mem_sel(0));
D_FF_1:D_FF
PORT MAP(D=>address(1),
         Res=>Res,
         En=>'1',
         Clk=>Clk_slow,
         Q=>Mem_sel(1));
D_FF_2:D_FF
PORT MAP(D=>address(2),
         Res=>Res,
         En=>'1',
         Clk=>Clk_slow,
         Q=>Mem_sel(2));
end Behavioral;

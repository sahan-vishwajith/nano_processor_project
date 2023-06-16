----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2023 06:09:36 PM
-- Design Name: 
-- Module Name: Nano_processor_TB - Behavioral
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

entity Nano_processor_TB is
--  Port ( );
end Nano_processor_TB;

architecture Behavioral of Nano_processor_TB is
COMPONENT Nano_Processor_0
PORT  ( Reg_out : out STD_LOGIC_VECTOR (3 downto 0);
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Zero : out STD_LOGIC;
           OVF : out STD_LOGIC;
           anode:out STD_LOGIC_VECTOR (3 downto 0);
           Seg_out:out STD_LOGIC_VECTOR (6 downto 0));
END COMPONENT;
SIGNAL Reg_out,anode:STD_LOGIC_VECTOR (3 downto 0);
SIGNAL Res,Clk,Zero,OVF:STD_LOGIC:='0';
SIGNAL Seg_out: STD_LOGIC_VECTOR (6 downto 0);
begin
UUT:Nano_Processor_0
PORT MAP(Reg_out=>Reg_out,
        Res=>Res,
        Clk=>Clk,
        Zero=>Zero,
        OVF=>OVF,
        anode=>anode,
        Seg_out=>Seg_out
        );
PROCESS
BEGIN
Clk<=NOT(Clk);
WAIT FOR 1ns;
END PROCESS;
process
begin 
Res<='1';
wait for 100 ns;
Res<='0';
wait;
end process;
end Behavioral;

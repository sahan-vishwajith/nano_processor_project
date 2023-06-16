----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/07/2023 04:40:51 PM
-- Design Name: 
-- Module Name: Sev_Seg_TB - Behavioral
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

entity Sev_Seg_TB is
--  Port ( );
end Sev_Seg_TB;

architecture Behavioral of Sev_Seg_TB is
COMPONENT Sev_Seg
PORT ( anode : out STD_LOGIC_VECTOR (3 downto 0);
       Seg_in : in STD_LOGIC_VECTOR (3 downto 0);
       Seg_out : out STD_LOGIC_VECTOR (6 downto 0));
END COMPONENT;
SIGNAL anode:STD_LOGIC_VECTOR (3 downto 0);
SIGNAL Seg_in:STD_LOGIC_VECTOR (3 downto 0);
SIGNAL Seg_out:STD_LOGIC_VECTOR (6 downto 0);
begin
UUT:Sev_Seg
port map(anode=>anode,
        Seg_in=>Seg_in,
        Seg_out=>Seg_out);
process
begin
seg_in<="UUUU";
wait for 100 ns;
seg_in<="0010";
wait for 100ns;
seg_in<="0100";
wait;
end process;
end Behavioral;

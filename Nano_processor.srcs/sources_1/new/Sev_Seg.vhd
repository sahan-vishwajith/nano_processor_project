----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/07/2023 04:28:33 PM
-- Design Name: 
-- Module Name: Sev_Seg - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sev_Seg is
    Port ( anode : out STD_LOGIC_VECTOR (3 downto 0);
           Seg_in : in STD_LOGIC_VECTOR (3 downto 0);
           Seg_out : out STD_LOGIC_VECTOR (6 downto 0));
end Sev_Seg;

architecture Behavioral of Sev_Seg is
type Rom is array(0 to 15) of STD_LOGIC_VECTOR(6 downto 0);
SIGNAL seven_segment:Rom:=(
                        "1000000",--0
                        "1111001",--1
                        "0100100",--2
                        "0110000",--3
                        "0011001",--4
                        "0010010",--5
                        "0000010",--6
                        "1111000",--7
                        "0000000",--8
                        "0010000",--9
                        "0001000",--a
                        "0000011",--b
                        "1000110",--c
                        "0100001",--d
                        "0000110",--e
                        "0001110"--f
                                    );
begin
Seg_out<=seven_segment(to_integer(unsigned(Seg_in)));
anode<="1110";
end Behavioral;

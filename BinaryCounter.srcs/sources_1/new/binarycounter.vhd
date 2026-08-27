----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/13/2026 03:27:36 PM
-- Design Name: 
-- Module Name: binarycounter - Behavioral
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
use IEEE.numeric_std.all; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity binarycounter is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (3 downto 0));
end binarycounter;

architecture Behavioral of binarycounter is
    signal counter_reg : unsigned (3 DOWNTO 0) := (others => '0'); 

begin

    process(clk) 
    begin
          if rising_edge(clk) then
            if reset = '1' then
                counter_reg <= (others => '0');
            else
                counter_reg <= counter_reg + 1;
            end if;
        end if;
    end process; 
    
    count <= STD_LOGIC_VECTOR(counter_reg);
    
end Behavioral;

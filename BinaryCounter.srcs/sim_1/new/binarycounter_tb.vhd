----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/13/2026 04:23:12 PM
-- Design Name: 
-- Module Name: binarycounter_tb - Behavioral
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

entity binarycounter_tb is
--  Port ( );
end binarycounter_tb;

architecture Behavioral of binarycounter_tb is
    
    signal clk   : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '1';
    signal count : STD_LOGIC_VECTOR(3 downto 0);

begin
    uut: entity work.binarycounter
        port map (
            clk   => clk,
            reset => reset,
            count => count
        );

    -- Generación del reloj
    clk <= not clk after 5 ns;

    -- Estímulos de prueba
    process
    begin

        -- Empezamos con reset activado
        reset <= '1';
        wait for 20 ns;

        -- Quitamos reset y dejamos contar
        reset <= '0';
        wait for 200 ns;

        -- Terminamos
        wait;

    end process;

end Behavioral;

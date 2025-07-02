----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 08:22:55 PM
-- Design Name: 
-- Module Name: tb_bai3 - Behavioral
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

entity tb_bai3 is
--  Port ( );
end tb_bai3;

architecture Behavioral of tb_bai3 is
    constant CLK_PERIOD : time := 10 ns;  -- Chu k? clock 10ns (100MHz)
    
    -- Signals
    signal CLK       : STD_LOGIC := '0';
    signal cnt       : STD_LOGIC_VECTOR(2 downto 0);
    signal carry_out : STD_LOGIC;
    
    -- Component Declaration
    component bai3
        Port ( 
            CLK       : in  STD_LOGIC;
            cnt       : out STD_LOGIC_VECTOR(2 downto 0);
            carry_out : out STD_LOGIC
        );
    end component;

begin
    -- Instantiation
    UUT: bai3
        port map (
            CLK       => CLK,
            cnt       => cnt,
            carry_out => carry_out
        );

    -- Clock Generation Process (vòng l?p vô h?n)
    clk_process: process
    begin
        while true loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

end Behavioral;
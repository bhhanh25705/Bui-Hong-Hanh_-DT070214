----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 08:34:52 PM
-- Design Name: 
-- Module Name: T_FF - Behavioral
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


entity T_FF is
    Port ( T : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : OUT STD_LOGIC;
           Q_int : OUT STD_LOGIC);
end T_FF;

architecture Behavioral of T_FF is

signal Q_tmp: std_logic :='0';

begin
    process(clk)
        begin
            if falling_edge(clk) then
                if T='0' then
                    Q_tmp <= Q_tmp;
                else 
                    Q_tmp<= not Q_tmp;
                end if;
            end if;
    end process;
        Q <= Q_tmp;
        Q_int <= not Q_tmp;
end Behavioral;
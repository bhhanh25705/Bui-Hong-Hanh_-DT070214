----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 08:33:13 PM
-- Design Name: 
-- Module Name: tb_bai5 - Behavioral
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

entity tb_bai5 is
end tb_bai5;

architecture Behavioral of tb_bai5 is
    signal clk        : STD_LOGIC := '0';
    signal cnt        : STD_LOGIC_VECTOR(2 downto 0);
    signal carry_out  : STD_LOGIC;

    component bai5
        Port ( 
            CLK       : in  STD_LOGIC;
            cnt       : out STD_LOGIC_VECTOR(2 downto 0);  
            carry_out : out STD_LOGIC                      
        );
    end component;
begin

    uut: bai5
        port map (
            CLK       => clk,
            cnt       => cnt,
            carry_out => carry_out
        );

    clk_process : process
    begin
        while now < 200 ns loop
            clk <= '0';
            wait for 5 ns;
            clk <= '1';
            wait for 5 ns;
        end loop;
        wait;
    end process;

end Behavioral;

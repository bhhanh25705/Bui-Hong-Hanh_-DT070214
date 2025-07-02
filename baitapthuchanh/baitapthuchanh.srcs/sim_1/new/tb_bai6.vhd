----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 08:41:40 PM
-- Design Name: 
-- Module Name: tb_bai6 - Behavioral
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

entity tb_bai6 is
end tb_bai6;

architecture Behavioral of tb_bai6 is

    component bai6 is  
        Port ( 
            CLK       : in  STD_LOGIC;
            cnt       : out STD_LOGIC_VECTOR(2 downto 0);
            carry_out : out STD_LOGIC
        );
    end component;

    signal CLK       : STD_LOGIC := '0';
    signal cnt       : STD_LOGIC_VECTOR(2 downto 0);
    signal carry_out : STD_LOGIC;

    constant CLK_PERIOD: time:=10ns;

begin

    UUT: bai6 port map (            
            CLK       => CLK,
            cnt       => cnt,
            carry_out => carry_out);
    clk_process: process
    begin
        while true loop
            CLK<='0';
            wait for CLK_PERIOD /2;
            CLK<='1';
            wait for CLK_PERIOD /2;
        end loop;
    end process;
end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 08:13:25 PM
-- Design Name: 
-- Module Name: tb_bai1_2 - Behavioral
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

entity tb_bai1_2 is
--  Port ( );
end tb_bai1_2;

architecture Behavioral of tb_bai1_2 is
component bai1_2
   Port ( A, B, C : in  STD_LOGIC;
           F1, F2 : out STD_LOGIC);
end component;

signal A, B, C: std_logic := '0';
signal F1, F2: std_logic;

begin
dut: bai1_2 port map (A => A, B => B, C => C, F1 => F1, F2 => F2);
tb: process
begin
    A <= '0'; B <= '0'; C <= '0'; wait for 10ns;
    A <= '0'; B <= '0'; C <= '1'; wait for 10ns;
    A <= '0'; B <= '1'; C <= '0'; wait for 10ns;
    A <= '0'; B <= '1'; C <= '1'; wait for 10ns;
    A <= '1'; B <= '0'; C <= '0'; wait for 10ns;
    A <= '1'; B <= '0'; C <= '1'; wait for 10ns;
    A <= '1'; B <= '1'; C <= '0'; wait for 10ns;
    A <= '1'; B <= '1'; C <= '1'; wait for 10ns;
end process; 
end Behavioral;


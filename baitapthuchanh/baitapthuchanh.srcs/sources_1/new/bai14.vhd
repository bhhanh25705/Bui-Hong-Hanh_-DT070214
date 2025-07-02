----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 09:00:12 PM
-- Design Name: 
-- Module Name: bai14 - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bai14 is
    Port ( 
        CLK       : in  STD_LOGIC;
        cnt       : out STD_LOGIC_VECTOR (2 downto 0);  
        carry_out : out STD_LOGIC);
end bai14;

architecture Behavioral of bai14 is
    component T_FF
        Port ( 
            T     : in  STD_LOGIC;
            CLK   : in  STD_LOGIC;
            Q     : OUT STD_LOGIC;
            Q_int : OUT STD_LOGIC
        );
    end component;
    
    signal Q_int : STD_LOGIC_VECTOR(2 downto 0) := "000";  
    signal T  : STD_LOGIC_VECTOR(2 downto 0);           
    signal Q_inv_int : STD_LOGIC_VECTOR(2 downto 0);       
    
begin
        T(0) <= (not Q_int(2)) and (not Q_int(1)) and (not Q_int(0));
        T(1) <= Q_int(0);
        T(2) <= Q_int(1) and Q_int(0);
  
    FF0: T_FF port map(clk => clk, T => T(0), Q => Q_int(0));
    FF1: T_FF port map(clk => clk, T => T(1), Q => Q_int(1));
    FF2: T_FF port map(clk => clk, T => T(2), Q => Q_int(2));

    cnt <= Q_int;
    carry_out <= '1' when Q_int= "001" else '0';
end Behavioral;

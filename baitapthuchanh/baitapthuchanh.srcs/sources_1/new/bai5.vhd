----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 08:32:08 PM
-- Design Name: 
-- Module Name: bai5 - Behavioral
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

entity bai5 is
    Port ( 
        CLK       : in  STD_LOGIC;
        cnt       : out STD_LOGIC_VECTOR(2 downto 0);  
        carry_out : out STD_LOGIC                      
    );
end bai5;

architecture Behavioral of bai5 is
    component T_FF
        Port ( 
            T     : in  STD_LOGIC;
            CLK   : in  STD_LOGIC;
            Q     : out STD_LOGIC;
            Q_int : out STD_LOGIC
        );
    end component;
    
    signal Q_int : STD_LOGIC_VECTOR(2 downto 0) := "101";  
    signal T  : STD_LOGIC_VECTOR(2 downto 0);           
    signal Q_inv_int : STD_LOGIC_VECTOR(2 downto 0);       
    
begin
           
        T(0) <= '1';
        T(1) <= (Q_int(2) and (not Q_int(0))) or (not Q_int(0) and Q_int(1)) ;
        T(2) <= (not Q_int(0)) and (not Q_int(1));
  
    FF0: T_FF port map(clk => clk, T => T(0), Q => Q_int(0));
    FF1: T_FF port map(clk => clk, T => T(1), Q => Q_int(1));
    FF2: T_FF port map(clk => clk, T => T(2), Q => Q_int(2));
    
    -- ??u ra
    cnt <= Q_int;
    carry_out <= '1' when Q_int= "000" else '0';  -- báo khi ??m t?i 5
end Behavioral;


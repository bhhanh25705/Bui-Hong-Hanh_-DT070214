----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 08:40:05 PM
-- Design Name: 
-- Module Name: bai6 - Behavioral
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

entity bai6 is
Port(   clk       : in std_logic;
        cnt       : out STD_LOGIC_VECTOR(2 downto 0);  
        carry_out : out STD_LOGIC);         
end bai6;

architecture Behavioral of bai6 is
    component JK_FF
            Port ( J    : in STD_LOGIC;
                   K    : in STD_LOGIC;
                   CLK  : in STD_LOGIC;
                   Q    : buffer STD_LOGIC;
                   Q_inv: buffer STD_LOGIC);
    end component;

    signal Q_sig : STD_LOGIC_VECTOR(2 downto 0) := "111";  
    signal J, K  : STD_LOGIC_VECTOR(2 downto 0);           
    signal Q_inv_sig : STD_LOGIC_VECTOR(2 downto 0);
begin
     J(0) <= Q_sig(2) or Q_sig(1);
     K(0) <='1';
     
     J(1) <= not Q_sig(0);
     K(1) <= not Q_sig(0);
     
     J(2) <= (not Q_sig(0)) and (not Q_sig(1));
     K(2) <= (not Q_sig(0)) and (not Q_sig(1));
    
    FF0: JK_FF port map (J(0), K(0), CLK, Q_sig(0), Q_inv_sig(0));
    FF1: JK_FF port map (J(1), K(1), CLK, Q_sig(1), Q_inv_sig(1));
    FF2: JK_FF port map (J(2), K(2), CLK, Q_sig(2), Q_inv_sig(2));

    cnt <= Q_sig;
    carry_out <= '1' when Q_sig = "000" else '0';
end Behavioral;
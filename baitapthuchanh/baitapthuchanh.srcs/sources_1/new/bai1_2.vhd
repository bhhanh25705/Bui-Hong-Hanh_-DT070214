----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 08:11:39 PM
-- Design Name: 
-- Module Name: bai1_2 - Behavioral
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

entity bai1_2 is
    Port ( A, B, C : in  STD_LOGIC;
           F1, F2  : out STD_LOGIC);
end bai1_2;

architecture Behavioral of bai1_2 is
    signal notA1, notA2: std_logic;
    signal AB1, AB2, AC1, AC2, BC1, BC2: std_logic;
    signal T1, T2: std_logic;
begin
    notA1 <= A nand A;
-- A'B, A'C, and BC
    AB1 <= (notA1 nand B) nand (notA1 nand B);
    AC1 <= (notA1 nand C) nand (notA1 nand C);
    BC1 <= (B nand C) nand (B nand C);
    T1 <= ((AB1 nand AB1) nand (AC1 nand AC1));
    F1 <= (T1 nand T1) nand (BC1 nand BC1);
    
    notA2 <= A nor A;
    AB2 <= ((notA2 nor notA2) nor (B nor B));
    AC2 <= ((notA2 nor notA2) nor (C nor C));
    BC2 <= ((B nor B) nor (C nor C));
    T2 <= ((AB2 NOR AC2) NOR (AB2 NOR AC2));    
    F2 <= (T2 NOR BC2) NOR (T2 NOR BC2);
end Behavioral;
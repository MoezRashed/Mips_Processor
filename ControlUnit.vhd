----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:22:13 03/16/2022 
-- Design Name: 
-- Module Name:    ControlUnit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ControlUnit is
    Port ( opin : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDst : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           AluOp : out  STD_LOGIC_VECTOR (1 downto 0));
end ControlUnit;

architecture Behavioral of ControlUnit is

begin
process(opin)
begin
if opin ="000000"
	then 
	 RegDst <='1';
	 ALUSrc <='0';
	 MemtoReg <='0';
	 RegWrite <='1';
	 MemRead <='0';
	 MemWrite <='0';
	 Branch <='0';
	 AluOp<="10";
elsif opin = "100011"
	then 
	 RegDst <='0';
	 ALUSrc <='1';
	 MemtoReg <='1';
	 RegWrite <='1';
	 MemRead <='1';
	 MemWrite <='0';
	 Branch <='0';
	 AluOp <="00";
elsif opin = "101011"
	then 
	 RegDst <='0';
	 ALUSrc <='1';
	 MemtoReg <='0';
	 RegWrite <='0';
	 MemRead <='0';
	 MemWrite <='1';
	 Branch <='0';
	 AluOp <="00";
elsif opin = "000100"
	then 
	 RegDst <='0';
	 ALUSrc <='0';
	 MemtoReg <='0';
	 RegWrite <='0';
	 MemRead <='0';
	 MemWrite <='0';
	 Branch <='1';
	 AluOp <="01";
end if;
end process;
	
end Behavioral;


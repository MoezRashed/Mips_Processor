----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:32:32 04/23/2022 
-- Design Name: 
-- Module Name:    PC - Behavioral 
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

entity PC is
   Port ( inputt : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           outputt : out  STD_LOGIC_VECTOR (31 downto 0));
end PC;

architecture Behavioral of PC is
signal temp : STD_LOGIC_VECTOR (31 downto 0) :=x"00000004";
begin
process(clk,inputt) begin
		if rising_edge(clk) then
			outputt <= temp;
		end if;
		if falling_edge (clk) then 
		temp <= inputt;
		end if;
	end process;

end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:40:54 09/05/2025 
-- Design Name: 
-- Module Name:    adder_4bit - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_4bit is
	port(
		A	: in STD_LOGiC_VECTOR (3 downto 0);
		B 	: in STD_LOGIC_VECTOR (3 downto 0);
		Cin: in STD_LOGIC ;
		led_sum : out STD_LOGIC_VECTOR (6 downto 0);
		led_cout : out STD_LOGIC
		);
end adder_4bit;

architecture Behavioral of adder_4bit is

	signal sum_kq :STD_LOGIC_VECTOR(3 downto 0);
	signal carry_out:STD_LOGIC;
	
	function to_7segment (din : STD_LOGIC_VECTOR (3 downto 0))
		return STD_LOGIC_VECTOR is 
		variable seg_out : STD_LOGIC_VECTOR (6 downto 0);
	begin
		case din is
			when "0000" => seg_out := "1000000";
			when "0001" => seg_out := "1111001";
			when "0010" => seg_out := "0100100";
			when "0011" => seg_out := "0110000";
			when "0100" => seg_out := "0011001";
			when "0101" => seg_out := "0010010";
			when "0110" => seg_out := "0000010";
			when "0111" => seg_out := "1111000";
			when "1000" => seg_out := "0000000";
			when "1001" => seg_out := "0010000";
			when others => seg_out := "0110110";
		end case;
		return seg_out;
	end function;
	
	signal temp_sum : unsigned(4 downto 0);
	

begin

	temp_sum <= unsigned('0' & A) + unsigned('0' & B) + ("0000" & Cin);
	sum_kq <= STD_LOGIC_VECTOR (temp_sum (3 downto 0));
	carry_out <= temp_sum(4);
	
	led_sum <= to_7segment(sum_kq);
	led_cout <= not carry_out;


end ;


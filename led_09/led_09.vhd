----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:15:36 09/08/2025 
-- Design Name: 
-- Module Name:    led_09 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity led_09 is
	port ( 
		clk : in std_logic;
		reset: in std_logic;
		nut_up: in std_logic;
		nut_down: in std_logic;
		seg: out std_logic_vector(6 downto 0);
		digit: out std_logic_vector(5 downto 0)
		);

end led_09;

architecture Behavioral of led_09 is

	signal pulse_up : std_logic;
	signal pulse_down: std_logic;
	signal cur_count :std_logic_vector (3 downto 0);
	
	signal nut_up_sync:std_logic_vector(1 downto 0) := "00";
	signal nut_down_sync:std_logic_vector(1 downto 0) := "00";
	signal counter_up : integer range 0 to 1000000 := 0;
	signal counter_down : integer range 0 to 1000000 := 0;
	signal nut_up_sta : std_logic := '0';
	signal nut_down_sta : std_logic := '0';
	signal nut_up_prev: std_logic := '0';
	signal nut_down_prev: std_logic := '0';
	
	signal count : integer range 0 to 9 := 0;
	
	signal ref_counter : std_logic_vector (19 downto 0) := (others => '0');
	signal ref_enable : std_logic;
	signal cur_digit : std_logic_vector(2 downto 0) := "000";
	
	signal seg_internal : std_logic_vector ( 6 downto 0);
	
	constant debounce_time : integer := 1000000;
	
	
begin
	process (clk, reset)
	begin
		if reset ='1' then
			nut_up_sync <= "00";
		elsif rising_edge(clk) then
			nut_up_sync <= nut_up_sync(0) & nut_up;
		end if;
	end process;
	
	process (clk, reset)
	begin 
		if reset = '1' then
			counter_up <= 0;
			nut_up_sta <= '0';
		elsif rising_edge(clk) then
			if nut_up_sync(1) = nut_up_sta then
				counter_up <=0;
			else
				counter_up <= counter_up +1;
				if counter_up >= debounce_time -1 then
					nut_up_sta <= nut_up_sync(1);
					counter_up <= 0;
				end if;
			end if;
		end if;
	end process;
	
	process (clk,reset)
	begin
		if reset = '1' then
			nut_up_prev <= '0';
			pulse_up <= '0';
		elsif rising_edge (clk) then
			nut_up_prev <= nut_up_sta;
			pulse_up <= nut_up_sta and (not nut_up_prev);
		end if;
	end process;
	
	process (clk,reset)
	begin
		if reset = '1' then
			nut_down_sync <= "00";
		elsif rising_edge(clk) then
			nut_down_sync <= nut_down_sync(0) & nut_down;
		end if;
	end process;
	
	process(clk,reset)
	begin 
		if reset = '1' then
			counter_down <= 0;
			nut_down_sta <= '0';
		elsif rising_edge(clk) then
			if nut_down_sync(1) = nut_down_sta then
				counter_down <= 0 ;
			else 
				counter_down <= counter_down +1;
				if counter_down >= debounce_time-1 then
					nut_down_sta <= nut_down_sync(1);
					counter_down <=0;
				end if;
			end if;
		end if;
	end process;
	
	process (clk, reset)
	begin
		if reset = '1' then
			nut_down_prev <= '0';
			pulse_down <= '0';
		elsif rising_edge(clk) then
			nut_down_prev <= nut_down_sta;
			pulse_down <= nut_down_sta and (not nut_down_prev);
		end if;
	end process;
	
	process(clk,reset)
	begin
		if reset = '1' then
			count <= 0;
		elsif rising_edge(clk) then
			if pulse_up = '1' then
				if count = 9 then
					count <= 0;
				else
					count <= count+1;
				end if;
			elsif pulse_down = '1' then
				if count = 0 then
					count <= 9;
				else 
					count <= count -1;
				end if;
			end if;
		end if;
	end process;
	
	cur_count <= conv_std_logic_vector(count,4);
	
	process (cur_count)
	begin 
		case cur_count is 
			when "0000" => seg_internal <= "0000001";
			when "0001" => seg_internal <= "1001111";
			when "0010" => seg_internal <= "0010010";
			when "0011" => seg_internal <= "0000110";
			when "0100" => seg_internal <= "1001100";
			when "0101" => seg_internal <= "0100100";
			when "0110" => seg_internal <= "0100000";
			when "0111" => seg_internal <= "0001111";
			when "1000" => seg_internal <= "0000000";
			when "1001" => seg_internal <= "0000100";
			when others => seg_internal <= "1111111";
		end case;
	end process;
	
	process(clk,reset)
	begin
		if reset = '1' then
			ref_counter <= (others => '0');
		elsif rising_edge(clk) then
			ref_counter <= ref_counter +1;
		end if;
	end process;
	
	ref_enable <= ref_counter(19);
	
	process(clk,reset)
	begin
		if reset = '1' then
			cur_digit <= "000";
		elsif rising_edge(clk) then
			if ref_enable = '1' then
				if cur_digit = "101" then
					cur_digit <= "000";
				else
					cur_digit <= cur_digit +1;
				end if;
			end if;
		end if;
	end process;
	
	process(cur_digit)
	begin
		digit <= "111111";
		
		case cur_digit is
			when "000" => digit <= "111110";
			when others => digit <= "111111";
		end case;
	end process;
	
	seg <= seg_internal;
	
end Behavioral;


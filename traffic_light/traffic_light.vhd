----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:05:07 09/07/2025 
-- Design Name: 
-- Module Name:    traffic_light - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity traffic_light is
	port ( 
		clk : in STD_LOGIC;
		reset : in STD_LOGIC;
		nut : in STD_LOGIC;
		do_led  : out STD_LOGIC;
		vang_led: out STD_LOGIC;
		xanh_led: out STD_LOGIC;
		
		led_nut: out STD_LOGIC
		);
end traffic_light;

architecture Behavioral of traffic_light is

	type state is (XANH, VANG, DO);
	signal cur_state : state := XANH;
	signal next_state	: state;
	
	signal do_int : STD_LOGIC := '0';
	signal vang_int : STD_LOGIC := '0';
	signal xanh_int : STD_LOGIC := '0';
	
	signal counter : integer range 0 to 1500000000 := 0;
	signal counter_1s : integer range 0 to 50000000 :=0;
	signal time_counter: integer range 0 to 30 :=0;
	
	signal one_s :STD_LOGIC := '0';
	signal nut_req : STD_LOGIC := '0';
	signal nut_press : STD_LOGIC := '0';
	signal nut_prev : STD_LOGIC := '0';
	
	constant xanh_time : integer := 30; --30S
	constant vang_time : integer := 3; --3s
	constant do_time 	 : integer := 25; --25s
	
	constant min_xanh : integer := 5; --5s thoi gian min khi xanh chuyen neu co signal nut

begin

	-- xung 1s tu clock
	process (clk,reset)
	begin
		if reset = '1' then
			counter_1s <= 0;
			one_s <= '0' ;
		elsif rising_edge(clk) then 
			if counter_1s >= 49999999 then
				counter_1s <= 0;
				one_s <= '1';
			else 
				counter_1s <= counter_1s +1 ;
				one_s <= '0';
			end if;
		end if;
	end process;
	
-- xu ly nut bam 
	process(clk,reset)
	begin 
		if reset = '1' then
			nut_prev <= '0';
			nut_press <= '0';
		elsif rising_edge(clk) then
			nut_prev <= nut ;
			nut_press <= nut and (not nut_prev);
		end if;
	end process;
	
-- xu ly tin hieu nut
	process(clk,reset)
	begin
		if reset = '1' then
			nut_req <= '0';
		elsif rising_edge(clk) then
			if nut_press = '1' and cur_state = XANH then
				nut_req <= '1';
			elsif cur_state = DO then
				nut_req <= '0';
			end if;
		end if;
	end process;
	
	-- bo dem time
	process(clk,reset)
	begin
		if reset = '1' then
			time_counter <= 0;
		elsif rising_edge(clk) then
			if one_s = '1' then
				time_counter <= time_counter +1;
			end if;
		end if;
	end process;

	-- moore/mealy
	process(clk,reset)
	begin 
		if reset = '1' then
			cur_state <= XANH;
--			time_counter <= 0;
		elsif rising_edge(clk) then
			if one_s = '1' then
				case cur_state is
					when XANH =>
						if time_counter >= xanh_time or 
							(nut_req = '1' and time_counter >= min_xanh) then
							cur_state <= VANG;
--							time_counter <= 0;
						end if;
					when VANG =>
						if time_counter >= vang_time then
							cur_state <= DO;
--							time_counter <= 0;
						end if;
					when DO =>
						if time_counter >= do_time then
							cur_state <= XANH;
--							time_counter <= 0;
						end if;
				end case;
			end if;
		end if;
	end process;
	
	-- output logic
	process (cur_state)
	begin
		
		case cur_state is
			when XANH =>
				xanh_int <= '1';
				vang_int <= '0';
				do_int	<= '0';
			when VANG =>
				xanh_int <= '0';
				vang_int <= '1';
				do_int	<= '0';
			when DO => 
				xanh_int <= '0';
				vang_int <= '0';
				do_int	<= '1';
		end case;
	end process;
	do_led <= do_int;
	vang_led <= vang_int;
	xanh_led <= xanh_int;
	led_nut <= nut_req;
	
end Behavioral;


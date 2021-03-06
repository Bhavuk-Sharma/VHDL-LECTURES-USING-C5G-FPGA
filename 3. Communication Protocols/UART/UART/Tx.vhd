--Library
library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

--Entity
Entity Tx is
port(
	clk : in std_logic;
	start : in std_logic;
	busy : out std_logic;
	data : in std_logic_vector(7 downto 0);
	Tx_line : out std_logic);
end Tx;

--Architecture
architecture main of Tx is

signal prscl : integer range 0 to 5208 := 0;	-- for baud rate = 9600
signal index : integer range 0 to 9 := 0;
signal datafll : std_logic_vector(9 downto 0);
signal tx_flag : std_logic := '0';

begin
	process(clk)
	begin
		if rising_edge(clk) then
		
			if (tx_flag = '0' and start = '1') then
				tx_flag <= '1';
				busy <= '1';
				datafll(0) <= '0';		-- start bit
				datafll(9) <= '1';		-- stop bit
				datafll(8 downto 1) <= data;
 			end if;
			if (tx_flag = '1') then
				if (prscl < 5207) then
					prscl <= prscl + 1;
				else
					prscl <= 0;
				end if;
				if (prscl = 2607) then
					Tx_line <= datafll(index);
					if (index < 9) then
						index <= index + 1;
					else
						tx_flag <= '0';
						busy <= '0';
						index <= 0;
					end if;
				end if;
			end if;
		end if;
	end process;
end main;
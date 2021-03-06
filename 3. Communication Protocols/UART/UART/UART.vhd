--Library
library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

--Entity
Entity UART is
port(
	clock_50 : in std_logic;
	sw : in std_logic_vector(7 downto 0);
	ledr : out std_logic_vector(7 downto 0);
	ledg : out std_logic_vector(7 downto 0);
	key : in std_logic;
	UART_TXD : out std_logic;
	UART_RXD : in std_logic);
end UART;

--Architecture
architecture main of UART is
signal Tx_data : std_logic_vector(7 downto 0);
signal Tx_start : std_logic := '0';
signal Tx_busy : std_logic;

signal Rx_data : std_logic_vector(7 downto 0);
signal Rx_busy : std_logic;

----------------------------------------------

component Tx
port(
	clk : in std_logic;
	start : in std_logic;
	busy : out std_logic;
	data : in std_logic_vector(7 downto 0);
	Tx_line : out std_logic);
end component Tx;

----------------------------------------------

component Rx
port(
	clk : in std_logic;
	rx_line : in std_logic;
	data : out std_logic_vector(7 downto 0);
	busy : out std_logic);
end component Rx;
----------------------------------------------


begin
C1 : Tx port map(clock_50, Tx_start, Tx_busy, Tx_data, UART_TXD);
C2 : Rx port map(clock_50, UART_RXD, Rx_data, Rx_busy);


process(Rx_busy)
begin
	if falling_edge(Rx_busy) then
		ledr(7 downto 0) <= Rx_data;
	end if;
end process;


process(clock_50)
begin
	if rising_edge(clock_50) then
		if (key = '0' and Tx_busy = '0') then
			Tx_data <= sw(7 downto 0);
			Tx_start <= '1';
			ledg <= Tx_data;
		else
			Tx_start <= '0';
		end if;
	end if;
end process;
end main;
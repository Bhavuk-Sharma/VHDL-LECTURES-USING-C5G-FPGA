--Library
library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

--Entity
entity sram_cntrl is
port(
		clk		:	in		std_logic;
		reset		:	in		std_logic;
		
		data_in	:	in 	std_logic_vector(15 downto 0);
		data_out	:	out 	std_logic_vector(15 downto 0);
		addr_in	:	in 	std_logic_vector(17 downto 0);
		
		rd_act	:	in		std_logic;
		we_act	:	in		std_logic;
		
		sram_adr	:	out	std_logic_vector(17 downto 0);
		sram_dq	:	inout	std_logic_vector(15 downto 0);
		sram_ce	:	out	std_logic;
		sram_oe	:	out	std_logic;
		sram_we	:	out	std_logic;
		sram_ub	:	out	std_logic;
		sram_lb	:	out	std_logic
	);
end entity;

--Architecture
architecture logic of sram_cntrl is
	type ram_fsm is (off_f, read_f, write_f);
	signal sram_state : ram_fsm := off_f;
	
	signal rd_sig, we_sig : std_logic;
	signal read_data  : std_logic_vector(15 downto 0);
	
begin
	Ram_cntrl : process(reset, clk)
	begin
			if(reset = '1') then
				read_data <= "0000000000000000";
				sram_ce <= '1';
				sram_lb <= '1';
				sram_ub <= '1';
				sram_adr <= (others => 'U');
				sram_dq <= (others => 'Z');
			elsif rising_edge(clk) then
				sram_ce <= '0';
				rd_sig <= '0';
				we_sig <= '0';
				sram_adr <= (others => '-');
				sram_dq <= (others => 'Z');
				if rd_act = '1' then --read
					rd_sig <= '1';
					sram_adr <= addr_in;
					sram_lb <= '0';
					sram_ub <= '0';
					data_out <= sram_dq(15 downto 0);
				elsif we_act = '1' then --write
					we_sig <= '1';
					sram_adr <= addr_in;
					sram_lb <= '0';
					sram_ub <= '0';
					sram_dq <= data_in;
				end if;
			end if;
	end process;
	
	Fsm : process(rd_sig, we_sig)
	begin
		sram_oe <= '1';
		sram_we<= '1';
		if(rd_sig = '1') then	--read
			sram_state <= read_f;
			sram_oe <= '0';
		elsif(we_sig = '1') then	--write
			sram_state <= write_f;
			sram_we <= '0';
		end if;
	end process;
end logic;
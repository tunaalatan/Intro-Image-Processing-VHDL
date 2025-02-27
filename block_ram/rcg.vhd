library ieee;
use ieee.std_logic_1164.all;

entity rcg is
	Port (	
		clk :	out std_logic;
		rstn :	out std_logic
	);
end rcg;

architecture Behavioral of rcg is

signal s_clk : std_logic := '0';
signal s_rstn : std_logic := '0';

begin

s_rstn <= '1' after 20ns;


P_CLK : process begin
	s_clk <= not s_clk;
	wait for 5ns;
end process P_CLK;


clk <= s_clk;
rstn <= s_rstn;
	
end Behavioral;

library ieee;
use ieee.std_logic_1164.all,ieee.numeric_std.all;

entity inferno_prog2 is
port (
	clk  : in  std_logic;
	addr : in  std_logic_vector(12 downto 0);
	data : out std_logic_vector(7 downto 0);

	-- signals that carry the ROM data from the MiSTer disk
	dn_addr : in  std_logic_vector(23 downto 0);
	dn_dout : in  std_logic_vector(7 downto 0);
	dn_wr   : in  std_logic
);
end entity;

architecture prom of inferno_prog2 is
	type rom is array(0 to  8191) of std_logic_vector(7 downto 0);
	
begin
process(clk)
begin
	if rising_edge(clk) then
		data <= dn_dout; --(to_integer(unsigned(addr)));
		--data <= rom_data(to_integer(unsigned(addr)));
	end if;
end process;
end architecture;

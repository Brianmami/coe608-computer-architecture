LIBRARY ieee;
USE ieee.std_logic_1164.aLL;
USE ieee.std_logic_arith.aLL;
USE ieee.std_logic_unsigned.aLL;

ENTITY pc IS
PORT(
  clr			: IN  STD_LOGIC; 
  clk			: IN  STD_LOGIC; 
  ld			: IN  STD_LOGIC; 
  inc			: IN  STD_LOGIC;
  d			: IN  STD_LOGIC_VECTOR(31 DOWNTO 0); 
  q			: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)); 
END pc;

ARCHITECTURE BEHAVIOR OF pc IS
  component add
    port(
      A		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      B		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END component;
  component mux2to1
    PORT (
        s			: IN STD_LOGIC;
        w0, w1 	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
        f 			: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
        );
  END component;
  component register32
    PORT(
      d		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      ld		: IN STD_LOGIC; 
      clr	: IN STD_LOGIC; 
      clk	: IN STD_LOGIC;
      Q		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END component;
  signal add_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal mux_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal q_out   : STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN
  add0: add port map (q_out, add_out);
  mux0: mux2to1 port map (inc, d, add_out, mux_out);
  reg0: register32 port map (mux_out, ld, clr, clk, q_out);
  q <= q_out;
END BEHAVIOR;
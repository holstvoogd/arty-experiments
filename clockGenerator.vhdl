LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all;

entity clockGenerator is
  port (
    cout: out std_logic;
    cin: in std_logic );
end clockGenerator;

architecture Behavioral of clockGenerator is
  -- Don't use a logic signal as clock source in a real world application!
  -- Use the on chip clock resources instead!
  signal counter: integer range 0 to 5000000 := 0;
  signal state: std_logic;
begin
  process (cin)
  begin
    if rising_edge(cin) then
       if counter = 5000000 then
          counter <= 0;
          state <= NOT (state);
       else
          counter <= counter+1;
       end if;
    end if;
  end process;
  cout <= state;
end Behavioral;

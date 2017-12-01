library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Clock_20Hz is
    Port ( CIN : in STD_LOGIC;
           COUT : out STD_LOGIC;
           RST : in STD_LOGIC);
end Clock_20Hz;
    
architecture Behavioral of Clock_20Hz is

signal temp: STD_LOGIC;
signal contador: integer range 0 to 25000000 := 0;
begin
process (RST,CIN) 
begin
       if (RST='1') then
              temp <= '0';
            contador <= 0;
        elsif CIN'event and CIN='1' then
            if (contador = 25000000) then
                temp <= NOT temp;
                contador <= 0;
            else
                contador <= contador+1;
            --temp<= not temp;
            end if;
        end if;
    end process;
    
  COUT<=temp;  
end Behavioral;
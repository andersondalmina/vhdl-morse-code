library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CLK_2khz is
    Port ( CIN : in STD_LOGIC;
           COUT : out STD_LOGIC;
           RST : in STD_LOGIC);
end CLK_2khz;
    
architecture Behavioral of CLK_2khz is

signal temp: STD_LOGIC;
signal contador: integer range 0 to 25000 := 0;
begin
process (RST,CIN) 
begin
       if (RST='0') then
              temp <= '0';
            contador <= 0;
        elsif CIN'event and CIN='1' then
            if (contador = 25000) then
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

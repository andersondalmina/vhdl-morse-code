library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Saida is
    Port ( 
        Clks : in STD_LOGIC;
        morse : in STD_LOGIC_VECTOR(0 TO 21);
        inicio : in Std_logic;
        RST : in STD_LOGIC;
        ledE : out STD_LOGIC
    );
end Saida;

architecture Behavioral of Saida is
    signal indice : integer := 0;
begin
    process(Clks, inicio, RST)
        begin
            if RST = '1' or inicio = '0' then
                indice <= 0;
                ledE <= '0';
            else
               -- if (inicio 'event and inicio ='1') then
                --    indice <= 0;
                --end if;

                if (indice <= 21 and Clks'event and Clks='1') then
                    ledE <= morse(indice);
                    indice<= indice +1;
                end if;
            end if;
    end process;
end Behavioral;

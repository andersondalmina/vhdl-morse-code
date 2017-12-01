
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Concatenator is
    Port (Morse_caracterp : in STD_LOGIC_VECTOR(0 TO 21);
          Indice_caracterp : in INTEGER;
          VetorMorsep : out STD_LOGIC_VECTOR(0 TO 4400);
          Indice_vetp : out INTEGER);
end Concatenator;

architecture Behavioral of Concatenator is
signal Morse_caracter : STD_LOGIC_VECTOR(0 TO 21);
signal Indice_caracteraux : INTEGER;
signal VetorMorse : STD_LOGIC_VECTOR(0 TO 4400);
signal Indice_vet : INTEGER:=0;

signal Indice_caracter : integer;
begin
Morse_caracter<=Morse_caracterp;
Indice_caracteraux<=Indice_caracterp;



process(Morse_caracter)
    begin
       Indice_caracter<=Indice_caracteraux - 1;
        for i in 0 to Indice_caracterp loop
            VetorMorse(Indice_vet)<= Morse_caracter(i);
            Indice_vet<=Indice_vet + 1;
        end loop;   
end process;

Indice_vetp<=Indice_vet;
VetorMorsep<= VetorMorse;


end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity TB_Concatenator is
--  Port ( );
end TB_Concatenator;

architecture Behavioral of TB_Concatenator is
signal Caracter_tb : STD_LOGIC_VECTOR(0 TO 21):="0000000000000000000000";
signal Limit_tb : INTEGER:= 1;
signal Indice_tb : Integer:= 0;
signal Vetor_tb :STD_LOGIC_VECTOR(0 TO 4400);
begin

CnC: entity work.Concatenator port map ( Morse_caracterp=>Caracter_tb, Indice_caracterp=>Limit_tb, Indice_vetp=>Indice_tb, VetorMorsep=> Vetor_tb);
Caracter_tb<= "10111000ZZZZZZZZZZZZZZ" after 1ns, "111010101000ZZZZZZZZZZ" after 2ns;
 Limit_tb<= 8 after 1ns, 12 after 2ns;
 
end Behavioral;

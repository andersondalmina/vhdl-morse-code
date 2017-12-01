
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity TB_translator is
--  Port ( );
end TB_translator;

architecture Behavioral of TB_translator is
signal letterin_TB : STD_LOGIC_VECTOR (8 DOWNTO 0):="000000000";
signal morseout_tb : STD_LOGIC_VECTOR (0 TO 21);
signal indice_tb : INTEGER;
begin

uut: entity work.Translator port map (LetterIn=>letterin_TB, MorseOut=>morseout_tb, IndiceOut=>indice_tb);
letterin_TB <= "000111000" after 1ns, --a
"001001100" after 2ns, --b
"010000100" after 3ns, --c
"011000100" after 4ns,--d
"000100100" after 5ns,--e
"011010100" after 6ns,--f
"000101100" after 7ns,--g
"011001100" after 8ns,--h
"011000010" after 9ns,--i
"011011100" after 10ns,--j
"001000010" after 11ns,--k
"011010010" after 12ns,--l
"001011100" after 13ns,--m
"010001100" after 14ns,--n
"000100010" after 15ns,--o
"010110010" after 16ns,--p
"010101000" after 17ns,--q
"010110100" after 18ns,--r
"011011000" after 19ns, --s
"000110100" after 20ns,--t
"000111100" after 21ns,--u
"001010100" after 22ns,--v
"010111000" after 23ns,--w
"001000100" after 24ns,--x
"010101100" after 25ns,--y
"ZZZZZZZZZ" after 26ns,--z
"010100010" after 27ns,--0
"001101000" after 28ns,--1
"001111000" after 29ns,--2
"001100100" after 30ns,--3
"010100100" after 31ns,--4
"001110100" after 32ns,--5
"001101100" after 33ns,--6
"010111100" after 34ns,--7
"001111100" after 35ns,--8
"001100010" after 36ns,--9
"010010100" after 37ns,--space
"001011010" after 38ns;-- enter

end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Translator is
    Port ( LetterIn : in STD_LOGIC_VECTOR (8 DOWNTO 0);
           MorseOut : out STD_LOGIC_VECTOR (0 TO 21);
           RST : in STD_LOGIC;
           InicioOut : out  STD_LOGIC);
end Translator;

architecture Behavioral of Translator is
signal Xmorse : STD_LOGIC_VECTOR (0 TO 21);
signal inicio : STD_LOGIC;
begin

process(LetterIn, RST)
begin 
    if RST = '1' then
        Xmorse <= "ZZZZZZZZZZZZZZZZZZZZZZ";
        inicio <= '0';
    else
        case LetterIn is
            when "000111000" => 
                                Xmorse <= "10111000ZZZZZZZZZZZZZZ"; --A = .-
                                inicio <= '1';
            when "001001100" => 
                                Xmorse <= "111010101000ZZZZZZZZZZ"; --B = -...
                               inicio <= '1';
            when "010000100" => 
                                Xmorse <= "11101011101000ZZZZZZZZ"; --C = -.-.
                               inicio <= '1';
            when "011000100" => 
                                Xmorse <= "1110101000ZZZZZZZZZZZZ"; --D = -..
                                inicio <= '1';
            when "000100100" => 
                                Xmorse <= "1000ZZZZZZZZZZZZZZZZZZ"; --E = .
                                inicio <= '1';
            when "011010100" => 
                                Xmorse <= "101011101000ZZZZZZZZZZ"; --F = ..-.
                                inicio <= '1';
            when "000101100" => 
                                Xmorse <= "111011101000ZZZZZZZZZZ"; --G = --.
                                inicio <= '1';
            when "011001100" => 
                                Xmorse <= "1010101000ZZZZZZZZZZZZ"; --H = ....
                                inicio <= '1';
            when "011000010" => 
                                Xmorse <= "101000ZZZZZZZZZZZZZZZZ"; --I = ..
                                inicio <= '1';
            when "011011100" => 
                                Xmorse <= "1011101110111000ZZZZZZ";--J = .---
                                inicio <= '1';
            when "001000010" => 
                                Xmorse <= "111010111000ZZZZZZZZZZ";--K = -.-
                                inicio <= '1';
            when "011010010" => 
                                Xmorse <= "101110101000ZZZZZZZZZZ";--L = .-..
                                inicio <= '1';
            when "001011100" => 
                                Xmorse <= "1110111000ZZZZZZZZZZZZ";--M = --
                                inicio <= '1';
            when "010001100" => 
                                Xmorse <= "11101000ZZZZZZZZZZZZZZ";--N = -.
                                inicio <= '1';
            when "000100010" => 
                                Xmorse <= "11101110111000ZZZZZZZZ";--O = ---
                                inicio <= '1';
            when "010110010" => 
                                Xmorse <= "10111011101000ZZZZZZZZ";--P = .--.
                                inicio <= '1';
            when "010101000" => 
                                Xmorse <= "1110111010111000ZZZZZZ";--Q = --.-
                                inicio <= '1';
            when "010110100" => 
                                Xmorse <= "1011101000ZZZZZZZZZZZZ"; --R = .-.
                                inicio <= '1';
            when "011011000" => 
                                Xmorse <= "10101000ZZZZZZZZZZZZZZ";--S = ...
                                inicio <= '1';
            when "000110100" => 
                                Xmorse <= "111000ZZZZZZZZZZZZZZZZ";--T = -
                                inicio <= '1';
            when "000111100" => 
                                Xmorse <= "1010111000ZZZZZZZZZZZZ";--U = ..-
                                inicio <= '1';
            when "001010100" => 
                                Xmorse <= "101010111000ZZZZZZZZZZ";--V  = ...-
                                inicio <= '1';
            when "010111000" => 
                                Xmorse <= "101110111000ZZZZZZZZZZ";--W = .--
                                inicio <= '1';
            when "001000100" => 
                                Xmorse <= "11101010111000ZZZZZZZZ";--X = -..-
                                inicio <= '1';
            when "010101100" => 
                                Xmorse <= "1110101110111000ZZZZZZ";--Y - -.--
                                inicio <= '1';
            when "001011000" => 
                                Xmorse <= "11101110101000ZZZZZZZZ";--Z = --.. 
                                inicio <= '1';
            when "010100010" => 
                                Xmorse <= "1110111011101110111000";--0 = -----
                                inicio <= '1';
            when "001101000" => 
                                Xmorse <= "10111011101110111000ZZ";--1 = .----
                                inicio <= '1';
            when "001111000" => 
                                Xmorse <= "101011101110111000ZZZZ"; --2 = ..---
                                inicio <= '1';
            when "001100100" => 
                                Xmorse <= "1010101110111000ZZZZZZ";--3 = ...--
                                inicio <= '1';
            when "010100100" => 
                                Xmorse <= "10101010111000ZZZZZZZZ";--4 = ....-
                                inicio <= '1';
            when "001110100" => 
                                Xmorse <= "101010101000ZZZZZZZZZZ"; --5 = .....
                                inicio <= '1';
            when "001101100" => 
                                Xmorse <= "11101010101000ZZZZZZZZ"; --6 = -....
                                inicio <= '1';
            when "010111100" => 
                                Xmorse <= "1110111010101000ZZZZZZ";--7 = --...
                                inicio <= '1';
            when "001111100" => 
                                Xmorse <= "111011101110101000ZZZZ";--8 = ---..
                                inicio <= '1';
            when "001100010" => 
                                Xmorse <= "11101110111011101000ZZ"; --9 = ----.
                                inicio <= '1';
            when others =>
                                Xmorse <= "ZZZZZZZZZZZZZZZZZZZZZZ";           
                                inicio <= '0';
            end case; 
    end if;                        
end process;

Morseout <= Xmorse;
InicioOut <= inicio;

end Behavioral;

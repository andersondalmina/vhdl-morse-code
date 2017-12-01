
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_Clock_20Hz is
end TB_Clock_20Hz;

architecture Behavioral of TB_Clock_20Hz is
signal CIN_TB:std_logic:='0';
signal COUT_TB:std_logic:='0';
signal RST_TB:std_logic:='1';
begin
uut: entity work.Clock_20Hz port map(CIN=>CIN_TB, COUT=>COUT_TB,RST=>RST_TB);
CIN_TB<=not CIN_TB after 5ns;
RST_TB<= '0' after 5ns;
end Behavioral;

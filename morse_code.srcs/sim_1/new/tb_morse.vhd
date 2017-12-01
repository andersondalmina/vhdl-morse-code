
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_morse is

end tb_morse;

architecture Behavioral of tb_morse is
    signal tb_clk : STD_LOGIC := '0';
    signal tb_ps2_clk : STD_LOGIC := '0';
    signal tb_ps2_data : STD_LOGIC := '0'; 
   -- signal tb_letter : STD_LOGIC_VECTOR(0 to 21);
    --signal VetorMorse_tb : STD_LOGIC_VECTOR(0 TO 4400);
    --signal Indice_vet_tb : integer;
    signal RST_GERAL_tb : std_logic;
   signal Led_tb : std_logic;
   -- signal flag_debug : std_logic;
   --signal tb_bits : STD_LOGIC_VECTOR(8 downto 0);
begin

    UUT: entity work.morse_code port map(clk => tb_clk, PS2Clk => tb_ps2_clk, PS2Data => tb_ps2_data,RSTGERAL=>RST_GERAL_tb, led=>Led_tb);--,morse_caracters=> tb_letter,VetorMorses=>tb_bits,flag_debug=>flag_debug);
    RST_GERAL_tb <= '1', '0' after 1ns;
    tb_clk <= not tb_clk after 1ps;
    tb_ps2_clk <= '1', '0' after 2ns, '1' after 4ns, '0' after 6ns, '1' after 8ns, '0' after 10ns, '1' after 12ns, '0' after 14ns, '1' after 16ns, '0' after 18ns, '1' after 20ns, '0' after 22ns, '1' after 24ns, '0' after 26ns, '1' after 28ns, '0' after 30ns, '1' after 32ns, '0' after 34ns, '1' after 36ns, '0' after 38ns,  '1' after 40ns,  '0' after 42ns, '1' after 44ns, '0' after 50ns, '1' after 52ns, '0' after 54ns, '1' after 56ns, '0' after 58ns, '1' after 60ns, '0' after 62ns, '1' after 64ns, '0' after 66ns, '1' after 68ns, '0' after 70ns, '1' after 72ns, '0' after 74ns, '1' after 76ns, '0' after 78ns, '1' after 80ns, '0' after 82ns, '1' after 84ns, '0' after 86ns,  '1' after 88ns,  '0' after 90ns, '1' after 92ns, 
                       '0' after 94ns, '1' after 96ns, '0' after 98ns, '1' after 100ns, '0' after 102ns, '1' after 104ns, '0' after 106ns, '1' after 108ns, '0' after 110ns, '1' after 112ns, '0' after 114ns, '1' after 116ns, '0' after 118ns, '1' after 120ns, '0' after 122ns, '1' after 124ns, '0' after 126ns, '1' after 128ns, '0' after 130ns,  '1' after 132ns,  '0' after 134ns, '1' after 136ns, '0' after 142ns, '1' after 144ns, '0' after 146ns, '1' after 148ns, '0' after 150ns, '1' after 152ns, '0' after 154ns, '1' after 156ns, '0' after 158ns, '1' after 160ns, '0' after 162ns, '1' after 164ns, '0' after 166ns, '1' after 168ns, '0' after 170ns, '1' after 172ns, '0' after 174ns, '1' after 176ns, '0' after 178ns,  '1' after 180ns,  '0' after 182ns ; 
    --tb_ps2_clk <= not tb_ps2_clk after 2ns, '0' after 40ns;
    
    -- TB que envia AA
    --tb_ps2_data <= '0','1' after 20ns, '0' after 36ns, '1' after 60 ns, '0' after 72ns, '1' after 111ns, '0' after 128 ns,'1' after 151ns,'0' after 163ns;
    
    --TB que envia AB
    tb_ps2_data <= '0', '1' after 20ns, '0' after 36ns, '1' after 60 ns, '0' after 72ns, '1' after 111ns, '0' after 128 ns,'1' after 147ns,'0' after 151ns, '1' AFTER 159ns, '0' after 167ns;
end Behavioral;

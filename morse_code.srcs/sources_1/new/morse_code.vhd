library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

entity morse_code is
    Port (
        clk : in STD_LOGIC; --Clock
        PS2Clk : in STD_LOGIC; --Clock do Teclado
        PS2Data : in STD_LOGIC; --Dados do Teclado
        RSTGeral : in STD_LOGIC;
        led0 : out STD_LOGIC;
        led1 : out STD_LOGIC;
        led2 : out STD_LOGIC;
        led3 : out STD_LOGIC;
        led4 : out STD_LOGIC;
        led5 : out STD_LOGIC;
        led6 : out STD_LOGIC;
        led7 : out STD_LOGIC;
        led8 : out STD_LOGIC;
        led9 : out STD_LOGIC;
        led10 : out STD_LOGIC;
        led11 : out STD_LOGIC;
        led12 : out STD_LOGIC;
        led13 : out STD_LOGIC;
        led14 : out STD_LOGIC;
        led15 : out STD_LOGIC;
        RGB1 : out STD_LOGIC;
        RGB2 : out STD_LOGIC;
        Buzzer : out STD_LOGIC
        --flag_debug : out std_logic;
        --Morse_caracters : out STD_LOGIC_VECTOR(0 to 21);
        --VetorMorses : out STD_LOGIC_VECTOR(0 TO 8)
    );
end morse_code;

architecture Behavioral of morse_code is
    signal LetterOut : STD_LOGIC_VECTOR(8 downto 0);  
    signal PS2Letter : STD_LOGIC_VECTOR(8 downto 0);
    signal count : INTEGER := 8;    
    signal CanRead : std_logic :='0';
   -- signal RST : std_logic := '0'; --sinal de reset da entidade do clock
    signal Clk_20Hz : std_logic := '0'; -- sinal do clock de 20Hz
    signal Morse_caracter : STD_LOGIC_VECTOR (0 TO 21);
    --signal Indice_caracter : integer:=0;
  --  signal final_transmissao : std_logic:='0';
    signal inicio_transmissao : STD_LOGIC:='0';
    signal leds : STD_LOGIC :='0';
    signal oscilador : STD_LOGIC :='0';
component Clock_20Hz is -- declaração do componente de clock
    Port (
        CIN : in STD_LOGIC;
        COUT : out STD_LOGIC;
        RST : in STD_LOGIC
    );
end component;

component Translator is
    Port ( 
        LetterIn : in STD_LOGIC_VECTOR (8 DOWNTO 0);
        MorseOut : out STD_LOGIC_VECTOR (0 TO 21);
        RST : in STD_LOGIC;
        InicioOut : out  STD_LOGIC
    );
end component;

component Saida is
   Port (
       Clks : in STD_LOGIC;
       morse : in STD_LOGIC_VECTOR( 0 TO 21);
       inicio : in Std_logic;
       RST : in STD_LOGIC;
       ledE : out STD_LOGIC
  );
end component;

component CLK_2khz is
    Port ( 
        CIN : in STD_LOGIC;
        COUT : out STD_LOGIC;
        RST : in STD_LOGIC);
end component;

begin


CK2: CLK_2khz port map( CIN => CLK, COUT => oscilador, RST => leds);
 
CK: Clock_20Hz port map (CIN => clk, COUT => Clk_20Hz, RST => RSTGeral);
-- Clk_20HZ agora é um clock com frequencia de 20 HZ

TR: Translator port map (LetterIn => LetterOut, MorseOut => Morse_caracter , InicioOut => inicio_transmissao,RST => RSTGeral);    
--  Morse_caracter tem o codigo do caracter ja em morse, Indice_caracter tem o tamanho do caracter


SA: Saida port map (Clks => Clk_20HZ, morse => Morse_caracter, inicio => inicio_transmissao, ledE => leds, RST => RSTGeral);

--pega 8 bits da tecla pressionada
process(PS2Clk,RSTGeral)
begin
    if RSTGeral = '1' then
         LetterOut <= "ZZZZZZZZZ";
         CanRead <= '0';
         count <= 8;
         PS2Letter <= "ZZZZZZZZZ";
    else 
        if (PS2Clk'event and PS2Clk = '0') then
            if (count >= 0) then
                PS2Letter(count) <= PS2Data;
                LetterOut<= "ZZZZZZZZZ";   
            end if;        
            if (count = -2) then
                count <= 8; 
                if CanRead = '1' then
                    LetterOut <= PS2Letter;
                    CanRead <= '0';               
                    end if;
                if  PS2Letter = "000001111" then
                    CanRead <= '1';
                    LetterOut<= "ZZZZZZZZZ";
                end if; 
            else
                count <= count - 1;
            end if;
        end if;
    end if;
end process;

--RST<=RSTGeral;

led0 <= leds;
led1 <= leds;
led2 <= leds;
led3 <= leds;
led4 <= leds;
led5 <= leds;
led6 <= leds;
led7 <= leds;
led8 <= leds;
led9 <= leds;
led10 <= leds;
led11 <= leds;
led12 <= leds;
led13 <= leds;
led14 <= leds;
led15 <= leds;
RGB1 <= leds;
RGB2 <= leds;
Buzzer <= oscilador;
--VetorMorses<= LetterOut;
--Morse_caracters <= Morse_caracter;
--Indice_vets<=Indice_vet;
 -- flag_debug<=  final_transmissao;   
end Behavioral;

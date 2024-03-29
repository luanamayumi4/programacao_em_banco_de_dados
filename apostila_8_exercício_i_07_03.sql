--Lista de Exercício 1:

-- 1. Faça um programa que gere um valor inteiro e o exiba

DO
$$
DECLARE

-- declarando um valor inteiro (Números inteiros: [1, 100])

	n1 INTEGER;
	li INTEGER := 1;
	ls INTEGER := 100;
BEGIN
	n1 := FLOOR(li + random() * (ls - li + 1));
	RAISE NOTICE '%', n1;
END;
$$

-- 2. Faça um programa que gere um valor real e o exiba (Números reais: [1, 10])

DO
$$
DECLARE
	n2 NUMERIC (5,2); --5 casas, 2 números depois da vírgula
	li INTEGER := 1;
	ls INTEGER := 10;
BEGIN
	n2 := FLOOR(li + random() * (ls - li + 1));
	RAISE NOTICE '%', n2;
END;
$$


/* 3. Faça um programa que gere um valor real no intervalo [20, 30] 
-- que representa uma temperatura em graus.
-- Faça a conversão para Fahrenheit e exiba (F = C x 1,8 + 32). 
*/

-- Duas partes para a realização do programa. 1 a geração do número randômico
-- 2. Converter a temperatura de celsius para Fahrenheit.


DO
$$
DECLARE
	temp NUMERIC (5,2);
	F NUMERIC (5,2);
	li INTEGER := 20;
	ls INTEGER := 30;
BEGIN

-- Gerando um valor aleatório entre 20 e 30.
	temp := FLOOR(li + random() * (ls - li + 1));
	RAISE NOTICE 'A temperatura em Cº é: %', temp;

-- Convertendo a temperatura C° > F°
	F := (temp *1.8) + 32;
	RAISE NOTICE 'A temperatura em Fº é: %', F;	
END;
$$


/* 4.  Faça um programa que gere três valores reais a, b, e c e 
mostre o valor de delta: aquele que calculamos para chegar às potenciais 
raízes de uma equação do segundo (/\ = b² - 4.a.c) */


DO 
$$
DECLARE

-- variáveis para o cálculo do delta
	a NUMERIC (20,2);
	b NUMERIC (20,2);
	c NUMERIC (20,2);
	
	delta NUMERIC (20,2);
	

-- determinando o range dos números
	li INTEGER := 20;
	ls INTEGER := 30;
BEGIN
	
-- primeiro vamos gerar os 3 valores para a,b e c
	a := FLOOR(li + random() * (ls - li + 1));
	b := FLOOR(li + random() * (ls - li + 1));
	c := FLOOR(li + random() * (ls - li + 1));
	RAISE NOTICE 'Os valores de a, b e c são respectivamente %, % e %: ', a,b,c;
	
 	delta := b ^ 2 -4 * a * c;
	RAISE NOTICE 'O valor de delta é: %', delta;	
END;
$$


/* 5. Faça um programa que gere um número inteiro e 
mostre a raiz cúbica de seu antecessor e a raiz quadrada de seu sucessor.*/

DO
$$
DECLARE
	n INTEGER;
	nS INTEGER;
	nA INTEGER;
	
	li INTEGER := 1;
	ls INTEGER := 100;
BEGIN

-- gerar o número dentro do intervalo
	n := FLOOR(li + random() * (ls - li + 1));
	nS := n + 1; -- sucessor
	nA := n - 1; -- antecessor
	
	RAISE NOTICE 'Número gerado %', n;
	RAISE NOTICE 'Raíz quadrade de % é %', nS, to_char(|/nS, '99.999');
	RAISE NOTICE 'Raíz Cúbica de % é %', nA, to_char(||/nA, '99.999');
END;
$$


/* 6. Faça um programa que gere medidas reais de um terreno retangular.
Gere também um valor real no intervalo [60, 70] que representa o preço por 
metro. O programa deve exibir o valor total do terreno. */

DO
$$
DECLARE

-- variáveis do retângulo
	comp NUMERIC (60,2);
	alt NUMERIC (60,2);
	area NUMERIC (60,2);
	metragem NUMERIC (60,2);
	total_terreno NUMERIC (60,2);
	
	preco NUMERIC(60,2);
	
-- limites
	li_terreno INTEGER := 1;
	ls_terreno INTEGER := 100;
	
	-- limites da metragem
	li INTEGER := 60;
	ls INTEGER := 70;
BEGIN
	-- valores de comp e da alt
	comp := li_terreno + random() * (ls_terreno - li_terreno + 1);
	alt := li_terreno + random() * (ls_terreno - li_terreno + 1);
	area = comp * alt;
	RAISE NOTICE 'Medidas : Comprimento : % m e Altura : % m. Com área de % m²', comp, alt, area;
	
	-- valor da metragem (representa o preço do terreno por metro)
	metragem := li + random() * (ls - li +1);
	RAISE NOTICE 'O valor do metro do terreno é de: R$ %', to_char(metragem, '99.99');
	
	-- mostrando o valor total do terreno (metro por area)
	preco := metragem * area;
	RAISE NOTICE 'O valor total do terreno é: R$ %', preco;
END;
$$


/* 7. Escreva um programa que gere um inteiro que representa o 
ano de nascimento de uma pessoa no intervalo [1980, 2000]
e gere um inteiro que representa o ano atual no intervalo [2010, 2020]. 
O programa deve exibir a idade da pessoa em anos. 
Desconsidere detalhes envolvendo dias, meses, anos bissextos */

DO
$$
DECLARE
	ano_nascimento INTEGER;
	ano_atual INTEGER;
	
	idade INTEGER;
	
-- limites
	ano_nasc_liI INTEGER := 1980;
	ano_nasc_liS INTEGER := 2000;
	ano_atual_liI INTEGER := 2010;
	ano_atual_liS INTEGER := 2020;
BEGIN

-- anos
	ano_nascimento := FLOOR(ano_nasc_liI + random() * (ano_nasc_liS - ano_nasc_liI + 1));
	ano_atual := FLOOR(ano_atual_liI + random() * (ano_atual_liS - ano_atual_liI + 1));
	RAISE NOTICE 'O ano de nascimento é % e o ano atual é %', ano_nascimento, ano_atual;
	
-- exibindo a idade em anos
	idade := ano_atual - ano_nascimento;
	RAISE NOTICE 'A idade é: % anos', idade;
END;
$$

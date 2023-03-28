-- Formatar número
SELECT FORMAT(
    123456789.89, -- Número a ser formatada
    'N2', -- Número de casas depois da vírgula, exemplo: 'N1' para apenas uma casa após a vírgula
    'pt-br' -- Região da formação, por exemplo 'pt-br' deixará o número assim: 123.456.789,89
)
SELECT STR(185) -- Transforma o número em uma string
SELECT STR(185.476, 6, 2) -- Define o tamanho da string e a quantidade de números após a vírgula, ele arredonda o número dependendo da quantidade de números após a vírgula passada

-- Arredondar número
SELECT CEILING(25.75) -- Arredonda para um inteiro, sempre para cima
SELECT FLOOR(25.75) -- Arredonda para um inteiro, sempre para baixo
SELECT ROUND(123.4545, 2) -- Arredonda o número para apenas duas casas depois da vírgula
SELECT ROUND(123.45, -2) -- Arrendoda o número para duas casas antes da vírgula, no exemplo arredonda para 100

-- Funções matematicas simples
SELECT ABS(-9) -- Obter o número absoluto, ou seja transforma negativos em positivos
SELECT POWER(4, 2) -- Eleva o primeiro valor a potência do segundo valor
SELECT SQRT(64) -- Retorna a raiz quadrada de um número
SELECT SQUARE(8) -- Retorna o número cuja raiz quadrada é o valor passado

-- Outras funções matematicas
SELECT ACOS(0.25) -- Retorna o arco cosseno de um número passado
SELECT ASIN(0.25) -- Retorna o arco seno de um número passado
SELECT ATAN(2.5) -- Retorna o arco tangente de um número passado
SELECT ATN2(0.50, 1) -- Retorna o arco tangente de dois números passados
SELECT COS(2) -- Retorna o cosseno de um número passado
SELECT COT(6) -- Retorna o co-tangente de um número passado
SELECT DEGREES(1.5) -- Converte um radiano para graus
SELECT RADIANS(180) -- Converte um grau para radianos
SELECT SIN(2) -- Retorna o seno de um número passado
SELECT TAN(1.75) -- Retorna a tangente de um número passado

-- Útil
SELECT ISNUMERIC('4567') -- Retorna 1 se o valor for um número e 0 se não for
SELECT SIGN(-2) -- Seleciona se o valor é negativo ou positivo, 1 para definir que é positivo, -1 par definir que é negativo, e 0 para 0

-- Selecionando números aleatórios
SELECT RAND() -- Seleciona um float aleatório entre 0 e 1 
SELECT FLOOR(RAND() * (10 - 5 + 1) + 5) -- Seleciona um número inteiro aleatório entre 5 e 10
SELECT RAND(100000) -- Passo uma semente para a geração do número aleatório

-- Constantes matematicas e logaritmos
SELECT EXP(2) -- Retorna 'e' elevado a uma potência específicada
SELECT LOG(2) -- Retorna o logaritmo natural do número passado
SELECT LOG(2, 4) -- É possível definir a base do logaritmo
SELECT LOG10(2) -- Retorna o logaritmo do número passado com base 10
SELECT PI() -- Seleciona o valor de pi
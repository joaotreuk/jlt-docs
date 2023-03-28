-- Bloco de comando, pode ser usado como uma regi�o C#
BEGIN PRINT 1 END
BREAK -- Sair do bloco
CONTINUE -- Avan�ar para o pr�ximo resultado em um bloco de repeti��o

-- Bloco condicional
IF 1 = 1 BEGIN PRINT 0 END
IF 1 = 1 PRINT 0 -- Bloco condicional simplificado, para usar apenas um comando em seu bloco

-- Bloco de repeti��o
WHILE @Variavel < 10 BEGIN PRINT 1 END
WHILE @Variavel < 10 PRINT 1 -- La�o simplificado, para usar apenas um comando em seu bloco

-- Switch case em uma sele��o
SELECT CASE WHEN @Variavel = 1 THEN 'Um' ELSE 'Zero' END AS Nome

-- Comandos de a��o
EXEC('SELECT 1') -- Executa um comando SQL
EXEC MinhaProcedure -- Executa um procedimento armazenado
EXEC MinhaProcedure 'Parametro', 'Parametro 2' -- Passando par�metros para a execu��o de um procedimento armazenado
RAISERROR ('Meu erro', 1, 1) -- Provoca um erro, par�metros: mensagem de erro, n�vel, estado
SHUTDOWN -- Desliga o SQL Server
SHUTDOWN WITH NOWAIT -- Se especificar "WITH NOWAIT" o SQL Server ser� desligado sem fazer pontos de checagem

-- Operadores
SELECT 1 WHERE 3 BETWEEN 1 AND 5 -- Verifica se o valor est� entre um range
SELECT 1 WHERE EXISTS(SELECT 1 FROM Tabela) -- Verifica se uma consulta retorna resultados
SELECT 1 WHERE 2 IN (1, 2, 3, 4) -- Verifica se o valor est� em uma lista de valores
SELECT 1 WHERE 'Exemplo' LIKE 'Exe%' -- Verifica se o valor possui um padr�o, n�o diferencia acentos por exemplo Jo�o != Joao
SELECT 1 WHERE 1 NOT LIKE '2' -- Nega um operador com palavra chave (BETWEEN, IN, LIKE, etc.)

-- Wildcards
--  % 	Represents zero or more characters 	                    bl%     Encontra: bl, black, blue, and blob
--  _ 	Represents a single character 	                        h_t     Encontra: hot, hat, and hit
--  [] 	Represents any single character within the brackets 	h[oa]t  Encontra: hot and hat; N�o encontra: hit
--  ^ 	Represents any character not in the brackets 	        h[^oa]t Encontra: hit; N�o encontra: hot and hat
--  - 	Represents a range of characters 	                    c[a-b]t Encontra: cat and cbt
--                                                              [0-9]   Todos num�ricos

-- Operadores de compara��o de bits
-- Retorna o valor da compara��o bin�ria entre dois valores inteiros
SELECT 170 & 75 -- Operador AND
SELECT 170 | 75 -- Operador OR
SELECT 170 ^ 75 -- Operador OR exclusivo
SELECT ~ 75 -- Operador NOT
SELECT @Variavel &= 75 -- Faz o operador AND, e seta a vari�vel para o resultado
SELECT @Variavel |= 75 -- Faz o operador OR, e seta a vari�vel para o resultado
SELECT @Variavel ^= 75 -- Faz o operador OR exclusivo, e seta a vari�vel para o resultado

/*
    Exemplo de opera��o AND, se ambos bits for�m 1 o bin�rio de resultado � 1
    1010 1010 = 170
    0100 1011 = 75
    -----------------
    0000 1010 = 10
*/
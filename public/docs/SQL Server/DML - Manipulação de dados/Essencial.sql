-- Bloco de comando, pode ser usado como uma região C#
BEGIN PRINT 1 END
BREAK -- Sair do bloco
CONTINUE -- Avançar para o próximo resultado em um bloco de repetição

-- Bloco condicional
IF 1 = 1 BEGIN PRINT 0 END
IF 1 = 1 PRINT 0 -- Bloco condicional simplificado, para usar apenas um comando em seu bloco

-- Bloco de repetição
WHILE @Variavel < 10 BEGIN PRINT 1 END
WHILE @Variavel < 10 PRINT 1 -- Laço simplificado, para usar apenas um comando em seu bloco

-- Switch case em uma seleção
SELECT CASE WHEN @Variavel = 1 THEN 'Um' ELSE 'Zero' END AS Nome

-- Comandos de ação
EXEC('SELECT 1') -- Executa um comando SQL
EXEC MinhaProcedure -- Executa um procedimento armazenado
EXEC MinhaProcedure 'Parametro', 'Parametro 2' -- Passando parámetros para a execução de um procedimento armazenado
RAISERROR ('Meu erro', 1, 1) -- Provoca um erro, parámetros: mensagem de erro, nível, estado
SHUTDOWN -- Desliga o SQL Server
SHUTDOWN WITH NOWAIT -- Se especificar "WITH NOWAIT" o SQL Server será desligado sem fazer pontos de checagem

-- Operadores
SELECT 1 WHERE 3 BETWEEN 1 AND 5 -- Verifica se o valor está entre um range
SELECT 1 WHERE EXISTS(SELECT 1 FROM Tabela) -- Verifica se uma consulta retorna resultados
SELECT 1 WHERE 2 IN (1, 2, 3, 4) -- Verifica se o valor está em uma lista de valores
SELECT 1 WHERE 'Exemplo' LIKE 'Exe%' -- Verifica se o valor possui um padrão, não diferencia acentos por exemplo João != Joao
SELECT 1 WHERE 1 NOT LIKE '2' -- Nega um operador com palavra chave (BETWEEN, IN, LIKE, etc.)

-- Wildcards
--  % 	Represents zero or more characters 	                    bl%     Encontra: bl, black, blue, and blob
--  _ 	Represents a single character 	                        h_t     Encontra: hot, hat, and hit
--  [] 	Represents any single character within the brackets 	h[oa]t  Encontra: hot and hat; Não encontra: hit
--  ^ 	Represents any character not in the brackets 	        h[^oa]t Encontra: hit; Não encontra: hot and hat
--  - 	Represents a range of characters 	                    c[a-b]t Encontra: cat and cbt
--                                                              [0-9]   Todos numéricos

-- Operadores de comparação de bits
-- Retorna o valor da comparação binária entre dois valores inteiros
SELECT 170 & 75 -- Operador AND
SELECT 170 | 75 -- Operador OR
SELECT 170 ^ 75 -- Operador OR exclusivo
SELECT ~ 75 -- Operador NOT
SELECT @Variavel &= 75 -- Faz o operador AND, e seta a variável para o resultado
SELECT @Variavel |= 75 -- Faz o operador OR, e seta a variável para o resultado
SELECT @Variavel ^= 75 -- Faz o operador OR exclusivo, e seta a variável para o resultado

/*
    Exemplo de operação AND, se ambos bits forém 1 o binário de resultado é 1
    1010 1010 = 170
    0100 1011 = 75
    -----------------
    0000 1010 = 10
*/
-- Limitação de resultados
SELECT TOP 10 * FROM NomeTabela -- Seleciona no máximo n resultados para a consulta
SELECT TOP 50 PERCENT * FROM NomeTabela -- Seleciona n porcento dos resultados da consulta
SELECT DISTINCT Coluna FROM NomeTabela -- Seleciona sem repetir os valores selecionados
SELECT * FROM NomeTabela ORDER BY ID DESC OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY -- Seleciona um número x de resultados a partir de um índice da ordenação

-- Ordenação
SELECT Coluna, Nome FROM NomeTabela ORDER BY 1, Nome -- Podesse ordenar usando o número da coluna do SELECT, exemplo: 1 = Coluna, porém não é uma boa prática devido que a ordem das colunas no SELECT pode ser alterada
SELECT ROW_NUMBER() OVER(ORDER BY ID) FROM NomeTabela -- Seleciona o número da linha apartir de uma determinada ordem
SELECT * FROM NomeTabela ORDER BY NEWID() -- Faz uma consulta com resultados ordenados aleatóriamente

-- Agrupamento
SELECT Cliente, SUM(Qtd) FROM NomeTabela GROUP BY Cliente -- Seleciona um valor agregado para cada item sendo agrupado
SELECT IIF(GROUPING(Cliente) = 0, Cliente, 'Total'), SUM(Qtd) FROM NomeTabela GROUP BY Cliente WITH ROLLUP -- Permite além do agrupamento comum, selecionar um totalizador para cada item agrupado
SELECT IIF(GROUPING(Cliente) = 0, Cliente, 'Total'), SUM(Qtd) FROM NomeTabela GROUP BY ROLLUP(Cliente)  -- Equivalente ao código acima
SELECT x FROM NomeTabela GROUP BY Cliente, Sexo WITH CUBE -- Seleciona o agrupamento comum, o totalizador para cada item agrupado, e o totalizador geral
SELECT x FROM NomeTabela GROUP BY CUBE(Cliente, Sexo) -- Equivalente ao código acima

-- Útil
SELECT Coluna AS C, Coluna2 AS [Duas Palavras], Coluna3 AS 'Duas Palavras' FROM Tabela AS T -- Usando apelidos para colunas ou tabelas
SELECT * FROM (SELECT * FROM NomeTabela) AS A -- Faz uma consulta dos dados de outra consulta
SELECT * FROM NomeTabela WITH (NOLOCK) -- Seleciona os dados que ainda estão sendo processados por uma ação ou transação, se não for usado então o comando esperara a ação ou transação ser completada antes de fazer a consulta

-- União de consultas
SELECT * FROM NomeTabela UNION SELECT * FROM Tabela2 -- Aplica um DISTINCT, ou seja não pega linhas repetidas
SELECT * FROM NomeTabela UNION ALL SELECT * FROM Tabela2 -- Pega linhas repetidas

-- Função pivô, para usar linhas como colunas
SELECT * FROM NomeTabela
PIVOT (
    SUM(Valor) -- Coluna a ser agregada como valores para as novas colunas
    FOR Mes -- Coluna pivô, cujas linhas se tornaram colunas
    IN (Janeiro, Fevereiro, [Março]) -- Valores a se tornarem colunas
) AS Meses
-- Função reversa da função pivô, transforma colunas em linhas
UNPIVOT (
    Valor -- Coluna a ser desagregada com os antigos valores das colunas
    FOR Mes IN (Janeiro, Fevereiro, [Março])
) AS Mes
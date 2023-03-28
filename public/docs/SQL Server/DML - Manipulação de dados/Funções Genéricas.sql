-- Converções
SELECT CAST('10' AS int) -- Converte uma variável como um tipo, tem a mesma funcionalidade da função 'CONVERT' porém com uma sintaxe melhor
SELECT CONVERT(varchar,  10) -- Tipo a ser convertido, variável
SELECT CONVERT(varchar, MinhaData, 23) -- Passa um padrão para formatação de data, 'YYYY-MM-DD'
SELECT CONVERT(varchar, MinhaData, 103) -- Padrão: 'DD/MM/YYYY'
SELECT CONVERT(varchar, MinhaData, 108) -- Padrão: 'HH:mm:SS' ou 'HH:mm' (usando char(5))
SELECT CONVERT(varchar, MinhaData, 112) -- Padrão: 'YYYYMMDD'

-- Verificações
SELECT COALESCE(NULL, NULL, 0) -- Seleciona o primeiro valor não nulo
SELECT IIF(1 = 1, 'Verdade', 'Mentira') -- Se em uma seleção
SELECT ISNULL(NULL, '') -- Se o primeiro valor for nulo então retorna o segundo valor
SELECT NULLIF(25, 25) -- Retorna NULL se ambas expressões forem iguais

-- Usuários, logins e configurações
SELECT CURRENT_USER -- Seleciona o usuário atual do banco de dados
SELECT SESSION_USER -- Seleciona o usuário atual do banco de dados
SELECT SESSIONPROPERTY('ANSI_NULLS') -- Retorna a configuração de uma opção específicada
SELECT SYSTEM_USER -- Seleciona o nome de login para o usuário atual
SELECT USER_NAME() -- Seleciona o nome do usuário atual do banco de dados
SELECT USER_NAME(3) -- Seleciona o nome de um usuário do banco de dados pelo seu id

-- Funções de agregação
SELECT APPROX_COUNT_DISTINCT(Coluna) FROM Tabela -- Seleciona a contagem aproximada de valores diferentes de uma tabela, útil para tabelas que tenham muitas linhas
SELECT AVG(Valor) FROM Tabela -- Seleciona a média da coluna
SELECT CHECKSUM_AGG(Coluna) FROM Tabela -- Seleciona uma somatória de checagem para ver se ocorreu uma mudança devido a um UPDATE
SELECT COUNT(1) FROM Tabela -- Seleciona a contagem de valores na consulta, nulos não são contados
SELECT COUNT_BIG(1) FROM Tabela -- Igual ao COUNT porém retorna um bigint
SELECT GROUPING(Cliente) FROM Tabela GROUP BY ROLLUP(Cliente) -- Retorna 0 para itens do agrupamento e 1 para o totalizador
SELECT GROUPING_ID(Cliente, Sexo) FROM Tabela GROUP BY CUBE(Cliente, Sexo) -- Retorna um identificador para o conjunto sendo usado na agregação, exemplo: Retorna 1 para a agregação de cliente e 3 para agregação to totalizador geral
SELECT MAX(ID) FROM Tabela -- Seleciona o maior valor da coluna
SELECT MIN(ID) FROM Tabela -- Seleciona o menor valor da coluna
SELECT STDEV(Qtd) FROM Tabela -- Seleciona o desvio padrão estatístico
SELECT STDEVP(Qtd) FROM Tabela -- Seleciona o desvio padrão estatístico para a população
SELECT SUM(ID) FROM Tabela -- Seleciona a soma de todos valores da coluna
SELECT VAR(Qtd) FROM Tabela -- Seleciona a variância estatística
SELECT VARP(Qtd) FROM Tabela -- Seleciona a variância estatística para a população
-- Índices podem ser usados para diminuir a consulta em tabelas, porém os mesmo aumentam o tempo de atualização em uma tabela

CREATE INDEX IndiceColuna ON Tabela (Coluna) -- Cria um índice para uma coluna de uma tabela
INCLUDE (Coluna2, Coluna3) -- Outras colunas para incluir no índice

-- Deletar um índice
DROP INDEX NomeIndice ON NomeTabela
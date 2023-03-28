-- Regras só permitem a inserção ou atualização de um determinado campo em que o resultado da regra seja verdadeiro

-- Cria uma regra para somente permitir valores maiores que 10
CREATE RULE NomeRegra AS @Valor > 10

-- Aplica uma regra a uma coluna de uma tabela
EXEC sp_bindrule NomeRegra, 'Tabela.Coluna'

-- Deleta uma regra
DROP RULE NomeRegra
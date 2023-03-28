INSERT INTO TABELA(Nome) VALUES ('Exemplo')

-- Pega a ID do último insert feito neste escopo
SELECT SCOPE_IDENTITY()

-- Faz o update e retorna o nome e antigo e novo dos objetos atualizados
UPDATE TABELA SET Nome = 'Exemplo2'
OUTPUT inserted.Nome, deleted.Nome

-- Insere na tabela temporaria as linhas deletadas
DELETE FROM TABELA
OUTPUT deleted.* INTO @TabelaTemporaria
WHERE 1 = 1
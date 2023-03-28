-- Cria um novo tipo como tabela
CREATE TYPE TabelaExemplo AS TABLE (
	ID int NOT NULL PRIMARY KEY,
	Nome varchar(20)
)

-- Usando o novo tipo como paramêtro de uma procedure
@Parametro AS TabelaExemplo READONLY
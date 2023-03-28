-- Criando uma função com valor escalar, que retorna a soma de 1 com o número do input
CREATE OR ALTER FUNCTION RetornaMaisUm(
    @Numero int
)
RETURNS int -- Tipo de retorno
AS BEGIN

-- Retorno da função
RETURN @Numero + 1

END

GO

-- Criando uma função com valor de tabela
CREATE OR ALTER FUNCTION FuncaoTabela()
RETURNS TABLE
AS

-- A função retorna uma tabela baseada em uma consulta
RETURN
SELECT * FROM Tabela

GO

-- Usando funções
SELECT dbo.RetornaMaisUm(1) -- Usando uma função com valor escalar
SELECT * FROM FuncaoTabela() -- Usando uma função com valor de tabela
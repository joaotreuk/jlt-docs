-- Trigger são funções que ocorrem quando determinado evento acontece

-- Trigger DML, tipo de trigger que ocorre durante o INSERT, UPDATE ou DELETE de uma tabela
CREATE TRIGGER Nome_Trigger 
ON Tabela
AFTER -- Momento em que o trigger acontece: FOR - Ocorre junto com a ação, AFTER - Ocorre após a ação, INSTEAD OF - Ocorre ao invés da ação
INSERT -- Uma trigger pode acontecer durante uma ou mais ações: FOR INSERT, UPDATE
AS BEGIN
    SELECT @DATA = DATA, @VALOR = VALOR FROM INSERTED -- Seleciona os valores da tabela que ativou o trigger, ou: DELETED

	SELECT CONTEXT_INFO() -- Pega o contexto passado para trigger
	SELECT CAST(CONTEXT_INFO() AS varchar(MAX)) -- Converte o contexto para o valor original
END

DECLARE @v varbinary(128) = CAST(CONVERT(varchar(MAX), 'Valor') AS varbinary(128)) -- Converte um valor para o mesmo poder ser usado como contexto
SET CONTEXT_INFO @v -- Passando um contexto para a trigger

-- ALterar ou deletar trigger
--ALTER TRIGGER
--DROP TRIGGER Nome_Trigger

-- Criar procedimento
CREATE PROC Nome_Procedure -- É possível usar PROCEDURE ou PROC
    @Parametro int = NULL, -- Os parâmetros podem receber um valor padrão
    @ValorRetorno int OUTPUT, -- Variável de retorno
    @Cursor CURSOR VARYING OUTPUT -- É possível usar um cursor como variável de retorno
AS BEGIN
    SET @ValorRetorno = 7 -- Definindo o valor a ser retornado
    RETURN 0 -- Retorna um valor
END GO

-- Alterar procedimento
ALTER PROC Nome_Procedure AS PRINT 0 GO -- Procedimento simplificado
CREATE OR ALTER PROC Nome_Procedure AS PRINT 0 -- Criar ou alterar procedimento

-- Executar procedimento
EXEC Nome_Procedure 'Valor', 0
EXECUTE Nome_Procedure 'Valor' GO
Nome_Procedure 'Valor' -- É possível executar um procedimento sem o "EXEC", porém ele precisará ser o único comando do branch
EXEC @Resultado = Nome_Procedure 'Valor' -- Setando o valor retornado pelo "RETURN" para uma variável

-- Deletar procedimento
DROP PROC Nome_Procedure

-- Obter retorno de procedimento para uma variável
EXEC Nome_Procedure @ValorRetorno = @Variavel OUTPUT -- Definindo que a variável é igual a variável de retorno
EXEC Nome_Procedure 'Valor', @Variavel OUTPUT -- Simplificado, a orderm precisa ser igual a ordem do procedimento
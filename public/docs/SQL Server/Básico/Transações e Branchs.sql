-- Inicia a transação
BEGIN TRAN
BEGIN TRAN EXEMPLO -- Podesse colocar um nome a transação quando houver mais de uma

-- Da o commit da transação
COMMIT TRAN EXEMPLO

-- Cancela a transação, caso a mesma de errado
ROLLBACK TRAN EXEMPLO

-- Try Catch
BEGIN TRY
    PRINT 1
END TRY BEGIN CATCH

    /* 
        Use RAISERROR inside the CATCH block to return error information about the original 
	    error that caused execution to jump to the CATCH block.        
    */ 
    DECLARE @ErrorMessage nvarchar(4000) = ERROR_MESSAGE(), @ErrorSeverity int = ERROR_SEVERITY(), @ErrorState int = ERROR_STATE()  
    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState)

END CATCH

-- Branchs
GOTO Branch_Dois -- Pula para o brach dois sem passar pelo um
Branch_Um: PRINT 1 -- Definindo um branch
Branch_Dois: PRINT 2

-- Avança para o próximo branch, útil para querys que requerem ser a única do branch
GO
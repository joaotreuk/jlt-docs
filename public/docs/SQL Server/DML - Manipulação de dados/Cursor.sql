DECLARE @Variavel int,
    @Variavel2 int

DECLARE cExemplo CURSOR LOCAL STATIC READ_ONLY FORWARD_ONLY
FOR
-- DECLARE EXEMPLO_CURSOR SCROLL CURSOR FOR -- Cursor com scroll pode usar outros fetch além do NEXT
SELECT COLUNA, COLUNA2 -- Colunas que passaram pelo cursor
FROM TABELA
    
OPEN cExemplo

-- Seleciona o número de linhas do último cursor aberto
SELECT @@CURSOR_ROWS

FETCH NEXT FROM cExemplo INTO @Variavel, @Variavel2 -- Passa para o próximo elemento do cursor
FETCH PRIOR FROM cExemplo -- Passa para o elemento anterior do cursor
FETCH ABSOLUTE 2 FROM cExemplo -- Fetch the second row in the cursor.  
FETCH RELATIVE 3 FROM cExemplo -- Fetch the row that is three rows after the current row.  
FETCH RELATIVE -2 FROM cExemplo -- Fetch the row that is two rows prior to the current row.  

WHILE @@FETCH_STATUS = 0 BEGIN   

    SELECT @Variavel

    FETCH NEXT FROM cExemplo INTO @Variavel, @Variavel2

END  
    
CLOSE cExemplo DEALLOCATE cExemplo 
-- Tabela temporaria, não dropavel
DECLARE @TabelaItens TABLE (ID INT IDENTITY(0, 1), Codigo VARCHAR(32)) 

-- Tabela não temporaria, porém que pode se tornar temporaria usando drop no final de um comando
CREATE TABLE #TabelaItensDados (ID INT IDENTITY(0, 1), Dado VARCHAR(30))
DROP TABLE #TabelaItensDados
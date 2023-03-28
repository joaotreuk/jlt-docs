-- Inserindo dados em uma tabela
INSERT INTO Tabela (Coluna) VALUES ('Exemplo')
INSERT Tabela (Coluna) VALUES ('Exemplo') -- No SQL Server o 'INTO' é opcional

-- Inserindo mais de uma linha ao mesmo tempo, se uma linha der erro nenhuma é inserida
INSERT INTO Tabela (ID, Nome)
VALUES (1, 'Exemplo'), (2, 'Exemplo2')

-- Insere os dados apartir de um SELECT
INSERT INTO Tabela
SELECT * FROM Tabela2

-- Insere os dados das colunas de uma tabela em outra tabela
SELECT * INTO Tabela -- Insere os dados da tabela 2 na tabela 1
FROM Tabela2
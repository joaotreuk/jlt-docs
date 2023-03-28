-- Seleciona as informações sobre os bancos
SELECT compatibility_level, -- Nível de compatibilidade
    *
FROM sys.databases

-- Tabela dos dados principais do banco de dados atual
SELECT * FROM sys.database_principals 

-- Seleciona as informações de armazenamento do banco
SELECT * FROM sys.database_files

-- Ver informações sobre um banco
sp_helpdb Nome_Banco
/*
É possível restaurar um banco que não exista atualmente no servidor:

1. Clicar com o botão direito na pasta "Banco de Dados" de um servidor;
2. É possível escolher a origem de um banco de dados existente ou de um arquivo .bkp;
3. É possível fechar todas as conexões existentes com este banco;
4. É possível definir se os arquivos vão ser realocados para uma nova pasta, usar a pasta default do SQL Server para evitar erro de acesso negado.
*/

USE master -- Usar preferencialmente o banco master para restaurar outros bancos

-- Antes de restaurar devesse desligar o banco ou deixá lo com usuário único

RESTORE DATABASE NomeBanco -- Banco a ser restaurado
FROM DISK = 'C:\Backup\Arquivo.bak' -- local do arquivo a ser restaurado
WITH FILE = 1,
MOVE 'NomeBanco_Data' TO 'D:\Aplicativos\SQL Server\Bancos\NomeBanco_Data.mdf', -- Altera o local do banco
MOVE 'NomeBanco_Log' TO 'D:\Aplicativos\SQL Server\Bancos\NomeBanco_Log.ldf',  -- Altera o local do log do banco
NOUNLOAD,
REPLACE, -- Parâmetro opcional, se declarado o banco de dados atual será substituido pelo novo
STATS = 5

-- Após restaurar devesse ligar o banco e deixá lo com usuários múltiplos
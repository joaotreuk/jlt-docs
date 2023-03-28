-- Cria um banco de dados
CREATE DATABASE NomeBanco
ON PRIMARY ( -- Propriedades do arquivo principal do banco
	NAME = 'NomeBanco_Data', -- Nome do banco
	FILENAME = 'D:\Aplicativos\SQL Server\Bancos\NomeBanco_Data.mdf', -- Caminho de onde ficará o banco
	SIZE = 167872KB, -- Tamanho inicial do banco, padrão: 8MB
	MAXSIZE = UNLIMITED, -- Tamanho máximo do banco, UNLIMITED: O banco crescerá até não haver mais espaço no disco, padrão: UNLIMITED
	FILEGROWTH = 16384KB -- Crescimento do arquivo
)
LOG ON ( -- Propriedades do arquivo de log do banco
	NAME = 'NomeBanco_Log', 
	FILENAME = 'D:\Aplicativos\SQL Server\Bancos\NomeBanco_Log.ldf', 
	SIZE = 2048KB, 
	MAXSIZE = 2048GB, 
	FILEGROWTH = 16384KB 
)

-- Alterar o lugar do arquivo do banco
ALTER DATABASE Banco  
MODIFY FILE ( 
    NAME = Banco_Data,   
    FILENAME = 'C:\Aplicativos\SQL Server\Bancos\Banco_Data.mdf'
)

-- Usuários do Banco
ALTER DATABASE NomeBanco SET MULTI_USER -- Define o banco para suportar múltiplos usuários
ALTER DATABASE NomeBanco SET SINGLE_USER WITH ROLLBACK IMMEDIATE -- Define o banco para suportar apenas um único usuário por vez

-- Status do banco
ALTER DATABASE NomeBanco SET OFFLINE WITH ROLLBACK IMMEDIATE -- Reverte todas transações, fecha todas conexões e desliga o banco
ALTER DATABASE NomeBanco SET ONLINE -- Liga o banco

-- Altera o nivel de compatibilidade
ALTER DATABASE NomeBanco SET compatibility_level = 140
-- Tabela dos logins de acesso ao servidor SQL
-- É possível ver informações dos logins como: linguagem padrão, se está desabilitado ou não, datas, entre outras.
SELECT * FROM sys.sql_logins

-- Cria um novo login para acessar o sql server
CREATE LOGIN NomeLogon
	FROM WINDOWS -- Define que é um login do Windows, o nome do login deve ser igual a domínio\usuário do Windows (nesse caso não deve definir uma senha, porque o login usará a mesma senha de acesso ao Windows)
	WITH
	PASSWORD = '1234', -- Senha do usuário
	DEFAULT_DATABASE = [master], -- banco de dados padrão, quando logar no Management Studio este será o banco de dados que aparecerá para a query inicialmente
	DEFAULT_LANGUAGE = [us_english] -- linguagem padrão

-- Alterar uma propriedade do logon
ALTER LOGIN NomeLogon WITH DEFAULT_DATABASE = NomeBanco

-- Adicionar um papel para um login
EXEC sp_addrolemember 'db_owner', 'NomeLogon'

-- Adiciona um logon para ser membro de um papél
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NomeLogon]

-- Da permissão para usuário de Login criar qualquer banco de dados
GRANT CREATE ANY DATABASE TO NomeLogon
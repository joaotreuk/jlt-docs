-- Tabela dos logins de acesso ao servidor SQL
-- � poss�vel ver informa��es dos logins como: linguagem padr�o, se est� desabilitado ou n�o, datas, entre outras.
SELECT * FROM sys.sql_logins

-- Cria um novo login para acessar o sql server
CREATE LOGIN NomeLogon
	FROM WINDOWS -- Define que � um login do Windows, o nome do login deve ser igual a dom�nio\usu�rio do Windows (nesse caso n�o deve definir uma senha, porque o login usar� a mesma senha de acesso ao Windows)
	WITH
	PASSWORD = '1234', -- Senha do usu�rio
	DEFAULT_DATABASE = [master], -- banco de dados padr�o, quando logar no Management Studio este ser� o banco de dados que aparecer� para a query inicialmente
	DEFAULT_LANGUAGE = [us_english] -- linguagem padr�o

-- Alterar uma propriedade do logon
ALTER LOGIN NomeLogon WITH DEFAULT_DATABASE = NomeBanco

-- Adicionar um papel para um login
EXEC sp_addrolemember 'db_owner', 'NomeLogon'

-- Adiciona um logon para ser membro de um pap�l
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NomeLogon]

-- Da permiss�o para usu�rio de Login criar qualquer banco de dados
GRANT CREATE ANY DATABASE TO NomeLogon
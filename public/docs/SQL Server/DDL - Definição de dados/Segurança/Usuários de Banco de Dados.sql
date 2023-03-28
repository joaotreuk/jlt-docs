-- Tabela de usuários do banco de dados
SELECT * FROM sys.sysusers

-- Cria um novo usuário
CREATE USER NomeUsuario FOR LOGIN NomeLogin
EXEC sp_addrolemember 'db_owner', 'NomeUsuario'

EXEC sys.sp_addsrvrolemember -- Adiciona um papel para um usuário de login
	@loginame = 'Joao',
	@rolename = 'sysadmin' -- Usuário que pode realizar qualquer atividade no servidor
	--@rolename = 'dbcreator' -- Usuário que pode modificar bancos de dados
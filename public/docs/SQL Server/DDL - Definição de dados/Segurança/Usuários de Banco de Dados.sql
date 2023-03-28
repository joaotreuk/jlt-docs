-- Tabela de usu�rios do banco de dados
SELECT * FROM sys.sysusers

-- Cria um novo usu�rio
CREATE USER NomeUsuario FOR LOGIN NomeLogin
EXEC sp_addrolemember 'db_owner', 'NomeUsuario'

EXEC sys.sp_addsrvrolemember -- Adiciona um papel para um usu�rio de login
	@loginame = 'Joao',
	@rolename = 'sysadmin' -- Usu�rio que pode realizar qualquer atividade no servidor
	--@rolename = 'dbcreator' -- Usu�rio que pode modificar bancos de dados
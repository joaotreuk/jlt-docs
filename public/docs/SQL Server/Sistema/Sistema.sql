-- Vari�veis de configura��o
SELECT @@DBTS -- Retorna o valor do último timestamp usado em uma a��o
SELECT @@LANGID -- Seleciona o id da linguagem sendo usada atualmente
SELECT @@LANGUAGE -- Seleciona o nome da linguagem sendo usada atualmente
SELECT @@LOCK_TIMEOUT -- Seleciona o tempo em milissegundos definido como limite de execu��o de a��es, -1 determina que n�o foi definido limite
SELECT @@MAX_CONNECTIONS -- Seleciona o número m�ximo de conex�es simult�neas permitidas no SQL Server
SELECT @@MAX_PRECISION -- Retorna a precis�o m�xima que pode ser usada em campos numeric e decimal
SELECT @@NESTLEVEL -- Retorna o nível de aninhamento da procedure, por exemplo uma procedure chamada por outra procedure teria nível 2 e a primeira procedure nível 1
-- O m�ximo de aninhamento permitido � 32
SELECT @@OPTIONS --Retorna um decimal que indica as op��es de configura��o, ao converter o decimal para bin�rio � mostrado uma lista de bin�rios que s�o os valores de cada configura��o
SELECT @@SERVERNAME -- Retorna o nome do servidor
SELECT @@SERVICENAME -- Retorna o nome do servi�o do SQL Server
SELECT @@SPID -- Seleciona o id do processo atual
SELECT @@TEXTSIZE -- Seleciona o número m�ximo de caracteres para o tipo varchar(MAX) e outros
SELECT @@VERSION -- Seleciona a vers�o do SQL Server

-- Fun��es de configura��o
SET CONCAT_NULL_YIELDS_NULL OFF -- Define se ao concatenar um valor nulo o resultado � um nulo ou n�o, padr�o: ON para n�o fazer o resultado da concatena��o ser nulo
SET IDENTITY_INSERT MinhaTabela ON -- Define se uma tabela permite inserir valores em uma coluna IDENTITY ou n�o
SET LANGUAGE Portuguese -- Altera a linguagem para a linguagem do alias especificado
SET LOCK_TIMEOUT 1800 -- Define um tempo em milissegundos como limite de execu��o de a��es
SET NOCOUNT ON -- Impede que o sql retorne o número de linhas afetadas, serve para otimiza��o, essa configura��o apenas vale para o branch atual
SET TEXTSIZE 2048 -- Define o número m�ximo de caracteres para o tipo varchar(MAX) e outros, 0 para definir para o padr�o

-- Tabelas do sistema
SELECT * FROM INFORMATION_SCHEMA.COLUMNS -- Informa��es sobre colunas. Como a sua tabela, esquema, banco e informa��es sobre o tipo de dados
SELECT * FROM sys.columns -- Informa��es específicas sobre colunas. object_id = ID da tabela
SELECT * FROM sys.messages -- Mesagens do sistema
SELECT DISTINCT Type, type_desc FROM sys.objects -- Tipos de objetos
SELECT alias, * FROM sys.syslanguages -- Tabela com as linguagens disponíveis e suas especifica��es, a linguagem define o formato de data, o nome dos meses e dias da semana
SELECT * FROM sys.tables -- Informa��es sobre as tabelas
SELECT * FROM INFORMATION_SCHEMA.ROUTINES  -- Informa��es sobre procedimentos e fun��es, como data de cria��o, altera��o, texto de comando, etc.

-- Configura��es
GO sp_configure 'show advanced options', 1 RECONFIGURE
GO sp_configure 'Ad Hoc Distributed Queries', 1 RECONFIGURE

-- Fun��es do sistema
-- Selecionar o identificador de um objeto, de uma tabela por exemplo, se o objeto n�o existir ent�o retorna NULL
SELECT OBJECT_ID('Minha_Tabela')
SELECT OBJECT_ID('MinhaFuncao', 'FN') -- Passando o tipo do objeto
-- Obt�m o tamanho em bytes da coluna de uma tabela
DECLARE @Tamanho smallint = (SELECT COL_LENGTH('NomeTabela', 'NomeColuna'))

-- Selecionar informa��es sobre usu�rios, sess�es e processos sendo realizados atualmente
GO sp_who2 'active' -- O par�metro opicional pode ser o nome de um usu�rio, um ID do processo, ou 'active' para pegar todos processos ativos
GO sp_who

-- Chaves estrangeiras e suas colunas
SELECT F.name AS [Foreign Key], OBJECT_NAME(F.parent_object_id) AS [Tabela],
    COL_NAME(FC.parent_object_id, FC.parent_column_id) AS [Coluna], 
	OBJECT_NAME(F.referenced_object_id) AS [Objeto Referenciado], 
	COL_NAME(FC.referenced_object_id, FC.referenced_column_id) AS [Coluna Referenciada], 
	is_disabled, delete_referential_action_desc, update_referential_action_desc  
FROM sys.foreign_keys AS F  
INNER JOIN sys.foreign_key_columns AS FC ON F.object_id = FC.constraint_object_id  
WHERE F.parent_object_id = OBJECT_ID('TABELA') -- Pega todas chaves estrangeiras na TABELA
AND F.referenced_object_id = OBJECT_ID('TABELA') -- Pega todas chaves estrangeiras que referenciam a TABELA
-- Variâveis de configuração
SELECT @@DBTS -- Retorna o valor do Ãºltimo timestamp usado em uma ação
SELECT @@LANGID -- Seleciona o id da linguagem sendo usada atualmente
SELECT @@LANGUAGE -- Seleciona o nome da linguagem sendo usada atualmente
SELECT @@LOCK_TIMEOUT -- Seleciona o tempo em milissegundos definido como limite de execução de ações, -1 determina que não foi definido limite
SELECT @@MAX_CONNECTIONS -- Seleciona o nÃºmero mâximo de conexões simultâneas permitidas no SQL Server
SELECT @@MAX_PRECISION -- Retorna a precisão mâxima que pode ser usada em campos numeric e decimal
SELECT @@NESTLEVEL -- Retorna o nÃ­vel de aninhamento da procedure, por exemplo uma procedure chamada por outra procedure teria nÃ­vel 2 e a primeira procedure nÃ­vel 1
-- O mâximo de aninhamento permitido é 32
SELECT @@OPTIONS --Retorna um decimal que indica as opções de configuração, ao converter o decimal para binârio é mostrado uma lista de binârios que são os valores de cada configuração
SELECT @@SERVERNAME -- Retorna o nome do servidor
SELECT @@SERVICENAME -- Retorna o nome do serviço do SQL Server
SELECT @@SPID -- Seleciona o id do processo atual
SELECT @@TEXTSIZE -- Seleciona o nÃºmero mâximo de caracteres para o tipo varchar(MAX) e outros
SELECT @@VERSION -- Seleciona a versão do SQL Server

-- Funções de configuração
SET CONCAT_NULL_YIELDS_NULL OFF -- Define se ao concatenar um valor nulo o resultado é um nulo ou não, padrão: ON para não fazer o resultado da concatenação ser nulo
SET IDENTITY_INSERT MinhaTabela ON -- Define se uma tabela permite inserir valores em uma coluna IDENTITY ou não
SET LANGUAGE Portuguese -- Altera a linguagem para a linguagem do alias especificado
SET LOCK_TIMEOUT 1800 -- Define um tempo em milissegundos como limite de execução de ações
SET NOCOUNT ON -- Impede que o sql retorne o nÃºmero de linhas afetadas, serve para otimização, essa configuração apenas vale para o branch atual
SET TEXTSIZE 2048 -- Define o nÃºmero mâximo de caracteres para o tipo varchar(MAX) e outros, 0 para definir para o padrão

-- Tabelas do sistema
SELECT * FROM INFORMATION_SCHEMA.COLUMNS -- Informações sobre colunas. Como a sua tabela, esquema, banco e informações sobre o tipo de dados
SELECT * FROM sys.columns -- Informações especÃ­ficas sobre colunas. object_id = ID da tabela
SELECT * FROM sys.messages -- Mesagens do sistema
SELECT DISTINCT Type, type_desc FROM sys.objects -- Tipos de objetos
SELECT alias, * FROM sys.syslanguages -- Tabela com as linguagens disponÃ­veis e suas especificações, a linguagem define o formato de data, o nome dos meses e dias da semana
SELECT * FROM sys.tables -- Informações sobre as tabelas
SELECT * FROM INFORMATION_SCHEMA.ROUTINES  -- Informações sobre procedimentos e funções, como data de criação, alteração, texto de comando, etc.

-- Configurações
GO sp_configure 'show advanced options', 1 RECONFIGURE
GO sp_configure 'Ad Hoc Distributed Queries', 1 RECONFIGURE

-- Funções do sistema
-- Selecionar o identificador de um objeto, de uma tabela por exemplo, se o objeto não existir então retorna NULL
SELECT OBJECT_ID('Minha_Tabela')
SELECT OBJECT_ID('MinhaFuncao', 'FN') -- Passando o tipo do objeto
-- Obtém o tamanho em bytes da coluna de uma tabela
DECLARE @Tamanho smallint = (SELECT COL_LENGTH('NomeTabela', 'NomeColuna'))

-- Selecionar informações sobre usuârios, sessões e processos sendo realizados atualmente
GO sp_who2 'active' -- O parâmetro opicional pode ser o nome de um usuârio, um ID do processo, ou 'active' para pegar todos processos ativos
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
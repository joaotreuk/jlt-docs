-- Ver informações sobre uma tabela
sp_help Nome_Tabela

-- Criar Tabela,  Constraints
PRIMARY KEY (Campo1, Campo2) -- Chave primaria usando mais de um campo
CONSTRAINT PK_Tabela PRIMARY KEY (Campo1, Campo2), -- Definindo o nome da constraint da chave

CONSTRAINT FK__Tabela_TabelaDeReferenciada -- Chave estrangeira de dois campos
FOREIGN KEY (Campo, Campo2)
REFERENCES TabelaDeReferencia (Campo, Campo2)

-- Alterar colunas de uma tabela
ALTER TABLE TABELA ADD Coluna int IDENTITY NOT NULL -- Adiciona uma coluna a tabela
ALTER TABLE Tabela ALTER COLUMN Coluna varchar(20) NULL -- Altera uma coluna
ALTER TABLE TABELA DROP COLUMN Coluna -- Remove uma coluna

-- Alterar constraints de uma tabela
ALTER TABLE EstaTabela ADD CONSTRAINT FK_EstaTabela_EsteCampo FOREIGN KEY (EsteCampo) REFERENCES TabelaReferente (CampoReferente) -- Adicionar constraint para uma coluna
    ON DELETE CASCADE -- Se os itens desta tabela são deletados junto a tabela de referência
ALTER TABLE TABELA DROP CONSTRAINT PK_Tabela -- Remove uma constraint, default e unique são constraints
ALTER TABLE TABELA DROP CONSTRAINT DF_Tabela_Campo -- Remove um default
ALTER TABLE TABELA nocheck CONSTRAINT ALL -- Atualiza a tabela para a mesma não checar mais constraints

-- Resetar o contador de uma coluna IDENTITY
DBCC CHECKIDENT ('Nome_Tabela', RESEED, 0)
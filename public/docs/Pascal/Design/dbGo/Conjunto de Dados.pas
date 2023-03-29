ADODataSet

Propriedades:
	- Active: Se o conjunto de dados está ativo para uso ou não;
	- CommandText: Query SQL a ser executada;
	- Name: Nome identificador, exemplo: dsClientes;
	- Parameters: Lista de parâmetros da query;
		- .ParamByName('DataInicial') -> Seleciona um parâmetro pelo seu nome;

Métodos:
	- .Close -> Fecha o conjunto de dados;
	- .Eof -> Final do arquivo, retorna "True" quando já tiver passado por todos itens;
	- .FieldByName('Coluna') -> Seleciona um campo do item atualmente selecionado pelo nome da coluna;
    - [.AsBoolean; .AsDateTime; .AsFloat; .AsInteger; .AsString;];
    - .Value -> Define um valor genérico para o campo;
	- .First -> Seleciona o primeiro item;
	- .Next -> Seleciona o próximo item;
	- .Open -> Executa a query e abre os dados para uso;
	- .ParamByName('parametro') -> Adicionando o valor de um parâmetro;
    - .Value := 'Valor' -> Representa um parâmetro genérico
	- .RecordCount -> Retorna o número de resultados da query;

-------------------- // --------------------

Parameter - Parâmetro

Propriedades:
	- Name: Nome do parâmetro;
	- Size: Tamanho do campo do parâmetro;
	- Value: Valor setado para o parâmetro;

-------------------- // --------------------

Field (StringField, BCDField, DateTimeField, IntegerField) - Campos da query

Atributos:
	- DisplayLabel: Nome exibido para a coluna;
	- FieldName: Nome do campo no SQL;
	- Name: Nome identificador, exemplo: nomeDataSet + nomeDoCampo;
	- Precision (Apenas no BCDField): Tamanho do campo no banco de dados;
	- Size: Tamanho do campo no banco de dados, para o "BCDField" é o número de casas depois da vírgula;

Métodos:
	- .AsString -> Valor string do campo do item atualmente selecionado;
	- .Value -> Valor do campo do item atualmente selecionado;
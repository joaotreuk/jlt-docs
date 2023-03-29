ClientDataSet

Propriedades:
- Name: Nome identificador, exemplo: cdsItensVenda;

Métodos:
- .Append -> Adiciona um novo item, selecionando o mesmo;
- .Close -> Fecha o elemento;
- .CreateDataSet -> Cria o elemento;
- .Delete -> Deleta o item atualmente selecionado, selecionando em seguir o próximo item;
- .Eof -> Final do arquivo, retorna "True" quando já tiver passado por todos itens;
- .FieldByName('Coluna') -> Seleciona um campo do item atualmente selecionado pelo nome da coluna;
  - .AsString -> Define um valor String para o campo;
  - .AsDateTime -> Define um valor Datetime para o campo;
  - .AsInteger -> Define um valor Integer para o campo;
  - .AsFloat -> Define um valor Float para o campo;
  - .Value -> Define um valor genérico para o campo;
- .First -> Seleciona o primeiro item;
- .Locate(Campo, Valor, []) -> Seleciona o item e retorna "True" no caso de haver um item correspondente;
  - Campo: String com o nome do campo a ser buscado, exemplo: 'Idade';
  - Valor: Valor do campo a ser buscado, exemplo: 20;
- .Next -> Seleciona o próximo item;
- .Post -> Salva os dados de um item selecionado;

Funcionalidades:
- Fiels Editor (Clicar com o botão direito): Manipular os campos utilizados da query;
  - Adicionar todos os campos da query;
  - Adicionar novo campo;
    - FieldType: Tipo do campo, se é um campo de dados ou se é um campo agregado;
    - Name: Nome do campo;
    - Size: Tamanho do campo;
    - Type: Tipo do valor do campo (string, integer);


Column (StringField, IntegerField, FloatField) - Campo de dados do elemento

Atributos:
- DisplayLabel: Nome exibido para a coluna;
- DisplayWidth: Tamanho do campo no banco de dados;
- FieldName: Nome do campo no SQL.


AggregateField - Campo agregado do elemento

Atributos:
- DisplayLabel: Nome exibido para a coluna;
- DisplayWidth: Tamanho do campo no banco de dados;
- Expression: Expressão SQL utilizado para a agregação, exemplo: SUM(FieldNameDoCampo);
- FieldName: Nome do campo no SQL.
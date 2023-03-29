ZQuery

Propriedades:
  - Active: Se a query está aberta para uso ou não;
  - Connection: Um elemento de conexão - ZConnection;
  - IndexFieldNames: FieldName da coluna em que devesse ordenar a query;
  - Name: Nome identificador, exemplo: qryListagem;
  - Params: Lista de parâmetros da query;
  - SQL: Comando SQL executado:
    - Text: Texto da query;
    - .Add('INSERT INTO Tabela (Coluna) VALUES (:parametro)') -> Adiciona uma linha para o SQL da query, :parametro é o paramêtro passado
    - .Clear -> Apaga os comandos da query;
    - Clicando no botão "Code Editor" é possível abrir um editor de SQL.

Métodos:
  - .Append -> Adiciona um novo item, selecionando o mesmo;
  - .Close -> Fecha a query;
  - .CreateDataSet -> Cria o elemento;
  - .Delete -> Deleta o item atualmente selecionado, selecionando em seguir o próximo item;
  - .DisableControls -> Desabilita os eventos;
  - .EnableControls -> Habilita os eventos;
  - .Eof -> Final do arquivo, retorna "True" quando já tiver passado por todos itens;
  - .ExecSQL ->  Executa a query
  - .FieldByName('Coluna') -> Seleciona um campo do item atualmente selecionado pelo nome da coluna;
    - [.AsBoolean; .AsDateTime; .AsFloat; .AsInteger; .AsString;];
    - .Value -> Define um valor genérico para o campo;
  - .First -> Seleciona o primeiro item;
  - .GetBookMark -> Obtem um elemento de marcação (TBookmark) do item atualmente selecionado;
  - .GotoBookMark(bookmark) -> Seleciona um item por uma marcação (TBookmark), após a query ser fechada e reaberta;
  - .IsEmpty -> Se a query trouxe algum resultado ou não;
  - .Locate(Campo, Valor, [loPartialKey]) -> Seleciona o item e retorna "True" no caso de haver um item correspondente;
    - Campo: String com o nome do campo a ser buscado, exemplo: 'Idade';
    - Valor: Valor do campo a ser buscado, exemplo: 20;
  - .Next -> Seleciona o próximo item;
  - .Open -> Abre a query para uso;
  - .ParamByName('parametro') -> Adicionando o valor de um parâmetro;
    - [.AsDate; .AsBoolean; .AsDateTime; .AsFloat; .AsInteger; .AsString;];
    - .Value := 'Valor' -> Representa um parâmetro genérico
  - .Post -> Salva os dados de um item selecionado;
  - .Refresh -> Re-executa uma listagem;

Eventos:
  - AfterScroll: Chamado sempre que o item selecionado mudar;

Funcionalidades:
  - Fiels Editor (Clicar com o botão direito): Manipular os campos utilizados da query;
    - Adicionar todos os campos da query;
    - Adicionar novo campo;
      - FieldType: Tipo do campo, se é um campo de dados ou se é um campo agregado;
      - Name: Nome do campo;
      - Size: Tamanho do campo;
      - Type: Tipo do valor do campo (string, integer);

-------------------- // --------------------

Param - Parâmetro

Propriedades:
  - DataType: Tipo de dados, exemplo: ftDate, ftInteger;
  - Name: Nome do parâmetro;
  - ParamType: Tipo do parâmetro, por exemplo "ptInput" para determinar que é um parâmetro de entrada da query;
  - Value: Valor setado para o parâmetro;

-------------------- // --------------------

Field (StringField, IntegerField, FloatField) - Campo de dados do elemento

Atributos:
  - DisplayFormat: Fortação para o campo, exemplo: #0.00, dd/mm/yyyy
  - DisplayLabel: Nome exibido para a coluna;
  - DisplayWidth: Tamanho do campo no banco de dados;
  - FieldName: Nome do campo no SQL.

-------------------- // --------------------

AggregateField - Campo agregado do elemento

Atributos:
  - DisplayLabel: Nome exibido para a coluna;
  - DisplayWidth: Tamanho do campo no banco de dados;
  - Expression: Expressão SQL utilizado para a agregação, exemplo: SUM(FieldNameDoCampo);
  - FieldName: Nome do campo no SQL.
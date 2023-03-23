// Exemplo ASP.NET
/*
public JsonResult Listar(int length, int start, int draw)
{
  string valorPesquisa = Request["search[value]"];
  int ordenacaoColuna = Convert.ToInt32(Request["order[0][column]"]);
  string ordenacaoDirecao = Request["order[0][dir]"];

  try
  {
    // Exemplo de retorno
    return new
    {
      draw,
      recordsTotal = 50
      recordsFiltered = 20,
      data = dados
    };
  }
  catch (Exception ex)
  {
    // Exemplo de retorno no caso de erro
    return new { draw, recordsTotal = 0, recordsFiltered = 0, data = new object[] { }, erro = ex.Message };
  }
}
*/

// Aplica a datatable a tabela
let dtTabela = $('#ElementoTable').DataTable({
  ajax: '/produtos/teste', // Método HTTP no qual será pegado os dados
  ajax: { // Configurando a requisição
    url: '/data-source', // Método HTTP no qual será pegado os dados
    type: 'POST' // Definindo o tipo do método, padrão: GET
  },
  processing: true, // Se exibe ou não "Processando" em qual os dados da tabela são prepados, padrão: false
  serverSide: true // Se os dados são pegados diretamente do servidor ou não, padrão: false
});

// Exemplo de JSON que deve ser retornado da requisição HTTP
{
  "draw": 1, // Versão do 'desenho', dá mudança de estado do componente, apenas devolver o draw recebido
  "recordsTotal": 57, // Número total de registros
  "recordsFiltered": 57, // Número de registros filtrados
  // Dados
  "data": [
    [
      "Airi",
      "Satou",
      "$162,700"
    ],
    [
      "DT_RowAttr": { "chaveAtributo": "valorDoAtributo" }, // Adicione os dados contidos no objeto como atributos
      "DT_RowId": "row_3", // Opcional, valor da propriedade ID desta linha
      "DT_RowClass": "minhaClasse", // Adiciona uma classe para o elemento TR que representa a linha
      "DT_RowData": { "minhaInformacao": 3 }, // Dados adicionais da linha (que não são exibidos na tabela)
      "Angelica",
      "Ramos",
      "$1,200,000"
    ]
  ],
  "error": "Ocorreu um erro" // Opcional, caso ocorra um erro no back-end, ele pode ser retornado por aqui para ser exibido para o usuário
}

// Exemplo de JSON enviado para requisição
{
  // columns representa a lista de definições de colunas do datatable, exemplo de pegar um item da lista: "columns[0][data]"
  "columns[i][data]": "dados", // Dados salvos para a coluna 
  "columns[i][name]": "produto", // Nome da coluna
  "columns[i][searchable]": true, // Se o campo de busca afeta a coluna ou não
  "columns[i][orderable]": true, // Se é possível ordenar pela coluna ou não
  "columns[i][search][value]": "", // Filtro aplicado para o campo de busca exclusivo da coluna
  "columns[i][search][regex]": false, // Se o filtro do campo de busca exclusivo da coluna deve ser tratado como uma expressão regular ou não
  "draw": 1, // Versão do 'desenho', dá mudança de estado do componente
  "length": 1, // Número máximo de resultados a serem devolvidos
  "order[i][column]": 0, // Lista de colunas da ordenação
  "order[i][dir]": "desc", // Lista de ordenação das colunas
  "search[regex]": false, // Se o filtro do campo de busca deve ser tratado como uma expressão regular ou não
  "search[value]": "Exemplo", // Filtro do campo de busca
  "start": 0 // Posição inicial dos dados a serem devolvidos
}
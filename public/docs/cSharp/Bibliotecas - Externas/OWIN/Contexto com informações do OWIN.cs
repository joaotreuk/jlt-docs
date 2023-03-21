// Contexto com informações da aplicação
// Como informações sobre a requisição HTTP atual do contexto
using Microsoft.Owin;

/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/

// Criando um contexto vazio
OwinContext contexto = new OwinContext();

// Criando a partir de um dicionário com as informações de ambiente
// Essas informações podem ser pegas a partir de um middleware
OwinContext contexto = new OwinContext(ambienteOwin);

/*-------------------- PROPRIEDADES --------------------*/

// Obter objeto com informações da autenticação do contexto
IAuthenticationManager autenticacao = contexto.Authentication;

// Obter um objeto dicionário com informações do ambiente
IDictionary<string, object> ambiente = contexto.Environment;

// Obter um objeto da requisição HTTP em andamento para com o contexto
IOwinRequest requisicao = contexto.Request;

// Obter objeto com informações da resposta HTTP em andamento para com o contexto
IOwinResponse resposta = contexto.Response;

// Gets or sets the host.TraceOutput environment value
TextWriter tw = contexto.TraceOutput;

/*-------------------- MÉTODOS --------------------*/

// Obter o valor de um item do dicionário do ambiente passando a chave do item do dicionário
var valor = contexto.Get<Objeto>("chave");
int status = contexto.Get<int>("owin.ResponseStatusCode");

// Definir um valor para um item do dicionário do ambiente
contexto.Set("chave", valor);
contexto.Set("owin.ResponseStatusCode", 500);
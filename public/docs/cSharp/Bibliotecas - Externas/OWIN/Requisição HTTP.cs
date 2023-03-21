// Informações da requisição HTTP do contexto
using Microsoft.Owin;

/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/

// É uma propriedade do contexto do Owin
IOwinRequest requisicao = contexto.Request;

/*-------------------- PROPRIEDADES --------------------*/

// Obter uma coleção de cookies
RequestCookieCollection cookies = requisicao.Cookies;
string token = cookies["accessToken"]; // Obter um cookie da coleção pelo seu nome

// Obter uma coleção com os itens do cabeçalho da requisição
IHeaderDictionary cabecalho = requisicao.Headers;
string autorizacao = cabecalho["Authorization"]; // Obter um item do cabeçalho pelo seu nome
string autorizacao = cabecalho.Get("Authorization"); // Obter um item do cabeçalho pelo seu nome
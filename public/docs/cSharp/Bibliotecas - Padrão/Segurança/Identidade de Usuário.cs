// Informações de autenticação do usuário
using System.Security.Principal;

/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/

IIdentity identidade;

/*-------------------- PROPRIEDADES --------------------*/

// Tipo de autenticação do usuário
string tipoAutenticacao = identity.AuthenticationType;

// Se o usuário está autenticado ou não
bool estaAutenticado = identity.IsAuthenticated;

// Nome salvo na reivindicação de nome do usuário
string nomeAcesso = identidade.Name;
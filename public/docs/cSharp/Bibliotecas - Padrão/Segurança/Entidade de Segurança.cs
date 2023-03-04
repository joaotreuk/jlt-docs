// Funcionalidades básicas de um objeto de entidade de segurança
using System.Security.Principal;

/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/

IPrincipal principal;

/*-------------------- PROPRIEDADES --------------------*/

// Objeto com informações de autenticação do usuário
IIdentity identidade = principal.Identity;

/*-------------------- MÉTODOS --------------------*/

// Verifica se o usuário da entidade está em um papel ou não
bool possuiPapel = principal.IsInRole("papel");
// Gerenciador usado para criar e validatar tokens
using Microsoft.IdentityModel.Tokens;

/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/

// Criar
SecurityTokenHandler manipulador = new SecurityTokenHandler();

/*-------------------- PROPRIEDADES --------------------*/

// Se o manipulador pode valider tokens ou não
bool podeValidar = manipulador.CanValidateToken;

// Se o manipulador pode serializar um tokens ou não
bool podeEscrever = manipulador.CanWriteToken;

// O tipo do token sendo usado
Type tipo = tokenHandler.TokenType;

/*-------------------- MÉTODOS --------------------*/

// Retorna se um token pode ser lido ou não
bool podeSerLido = manipulador.CanReadToken(tokenString);

// Cria um token (Objeto de Token)
SecurityToken token = manipulador.CreateToken(tokenDescriptor);

// Transformar um token em um objeto do token (Objeto de Token)
SecurityToken token = manipulador.ReadToken(tokenString);

// Valida um token e retorna um objeto de entidade de segurança (Bibliotecas Padrão -> Segurança -> Entidade de Segurança) e um objeto do token (Objeto de Token)
// Uma exceção é criada se o token não estiver válido
IPrincipal entidade = manipulador.ValidateToken(tokenString, parametrosValidacao, out SecurityToken token);
// Entidade com informações como claims do token (Bibliotecas Padrão -> Segurança -> Reivindicações -> Entidade de Segurança com Reivindicações)
ClaimsPrincipal entidade = manipulador.ValidateToken(tokenString, parametrosValidacao, out SecurityToken token);

// Serializar um objeto token (Objeto de Token) em um token
string tokenString = manipulador.WriteToken(token);
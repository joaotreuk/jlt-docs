// Gerenciador usado para criar e validatar tokens JWT
using System.IdentityModel.Tokens.Jwt;

/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/
// Herda de SecurityTokenHandler (Extensões Padrão -> Tokens de Segurança -> Gerenciador de Tokens)

// Criar
JwtSecurityTokenHandler manipulador = new JwtSecurityTokenHandler();

/*-------------------- MÉTODOS --------------------*/

// Cria um token (Objeto de token JWT)
string tokenString = manipulador.CreateEncodedJwt(tokenDescriptor);
JwtSecurityToken token = manipulador.CreateJwtSecurityToken(tokenDescriptor);

// Transformar um token em um objeto do token (Objeto de token JWT)
JwtSecurityToken token = manipulador.ReadJwtToken(tokenString);
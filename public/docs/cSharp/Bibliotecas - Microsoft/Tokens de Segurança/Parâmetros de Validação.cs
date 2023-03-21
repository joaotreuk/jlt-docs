// Parâmetros a serem usados para determinar se um token é válido
// Valores de configurações podem ser salvos em um arquivo de configuração ('web.config' ou 'appsettings.json') para melhor gerenciamento
using Microsoft.IdentityModel.Tokens;

/*-------------------- ATRIBUIÇÃO --------------------*/
TokenValidationParameters parametros = new TokenValidationParameters();

/*-------------------- PROPRIEDADES --------------------*/

// Chave de segurança que será valida para o token
parametros.IssuerSigningKey = chaveSeguranca; // (Chave de Segurança)

// Customizar o validador da chave de segurança, é bom usar o padrão mesmo
parametros.IssuerSigningKeyValidator = validador;

// Customizar o validador de tempo de vida, é bom usar o padrão mesmo
parametros.LifetimeValidator = validador;

// Define se a audiência será validada ou não, padrão: true
parametros.ValidateAudience = false;

// Define se a emissora será validada ou não, padrão: true
parametros.ValidateIssuer = false;

// Define se o validador da chave de segurança (IssuerSigningKeyValidator) é chamado, é melhor deixar como true, padrão: false
parametros.ValidateIssuerSigningKey = true;

// Obtém ou define se o tempo de vida será validado (LifetimeValidator) durante a validação do token, padrão: true
parametros.ValidateLifetime = false;

// Audiência que será valida para o token
parametros.ValidAudience = "Meu app front-end";

// Emissora que será valida para o token
parametros.ValidIssuer = "Meu app API";
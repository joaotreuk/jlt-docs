// Definindo o esquema do JWT para ser usado com a autenticação da aplicação
AuthenticationBuilder construtor = services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme);

// Habilitar autenticação usando o JWT-Bearer
// Esta que é realizada validando um token JWT passado pela propriedade de autenticação do cabeçalho de uma requisição
// O retorno é o próprio construtor de autenticação, que pode ser reusado para aplicar outras funcionalidades ao mesmo
construtor = construtor.AddJwtBearer(); // Usando as configurações padrão
// Passando opções customizadas
construtor = construtor.AddJwtBearer(opcoes =>
{
  // Define se HTTPS é necessário para o endereço de metadados ou a autoridade, padrão: true
  // Pelo que testei requisições em endereço HTTP ainda funcionam mesmo com isso habilitado
  opcoes.RequireHttpsMetadata = false;
  
  // Define se o token de portador deve ser armazenado no AuthenticationProperties após uma autorização bem-sucedida, padrão: true
  opcoes.SaveToken = true;

  // Definindo os parâmetros a serem usados para determinar se um token é válido
  opcoes.TokenValidationParameters = parametrosValidacao; // TokenValidationParameters localizado em Bibliotecas Padrão -> Seguraça -> Tokens
});

// No appsettings.json e appsettings.Development.json
{
  "AppSettings": {
    "Token": "Super Secret Key" // Definindo o nome secreto para o token
  }
}
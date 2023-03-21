// Configuração a ser realizada no método 'Configuration' do arquivo 'Startup.cs' do Owin
using Microsoft.Owin.Security.Jwt;

// Definir que a aplicação usará o middleware do JWT Bearer
// Retorna o próprio IAppBuilder para poder aproveitar a corrente de configurações do Owin
// Deve-se passar o objeto de opções do middleware como parâmetro
app = app.UseJwtBearerAuthentication(opcoes);

// Opções para o uso do middleware na aplicação
JwtBearerAuthenticationOptions opcoes = new JwtBearerAuthenticationOptions
{
  // Definindo os parâmetros a serem usados para determinar se um token é válido
  TokenValidationParameters = parametrosValidacao // TokenValidationParameters localizado em Bibliotecas Padrão -> Seguraça -> Tokens
});
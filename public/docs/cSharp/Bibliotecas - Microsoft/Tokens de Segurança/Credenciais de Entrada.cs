// Representa a chave de criptografia e os algoritmos de segurança usados para gerar uma assinatura digital
using Microsoft.IdentityModel.Tokens;

/*-------------------- ATRIBUIÇÃO --------------------*/

// Criando passando a chave de segurança usada para validar tokens e o algoritmo de segurança a ser utilizado
SigningCredentials credenciais = new SigningCredentials(chaveSeguranca, algoritmoSeguranca); // (Chave de Segurança, Algoritmos de Segurança)
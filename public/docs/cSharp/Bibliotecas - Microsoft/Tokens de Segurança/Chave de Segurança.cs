// Chave de segurança para validar tokens
using Microsoft.IdentityModel.Tokens;

// Exemplo de chave, é bom digitar um monte de coisa aleatória por segurança
string minhaChave = "sDkn2983 $$$ sk&#ghs d Wu9eb 84_|8dd SwIjwn+b HHH";

/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/

/* Criando a chave usando uma array de bytes, essa array de bytes é normalmente criada usando 'Encoding.UTF8.GetBytes(minhaChave)'
passando a chave */
SymmetricSecurityKey chaveSeguranca = new SymmetricSecurityKey(chaveBytes);

/*-------------------- PROPRIEDADES --------------------*/
byte[] chaveBytes = chaveSeguranca.key; // Chave que foi usada para criar o objeto (apenas leitura)
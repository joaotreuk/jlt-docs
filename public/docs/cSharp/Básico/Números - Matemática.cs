/*-------------------- ATRIBUIÇÃO --------------------*/

// Destacando o tipo do número
int numero = 1;
float numero = 5.3f;
double numero = 7.7d;
decimal numero = 0.5m;

// Além de números pode-se atribuir usando valores binários ou hexadecimais
byte numero = 0b10; // Com valor binário
uint numero = 0x1; // Com valor hexadecimal

/*-------------------- PROPRIEDADES --------------------*/
numero = int.MaxValue; // Obtém o valor máximo para o tipo int

/*-------------------- MÉTODOS --------------------*/

// Verificação
bool ehNumero = int.TryParse("1234", out int numero); // Retorna se uma string é um inteiro ou não, também é passado um parâmetro que retorna o valor no tipo especificado

// Converção
short numero = (short)2; // Um número constante precisa ser convertido para short
double numero = Convert.ToDouble(minhaVariavel); // Converter uma variável para o tipo 'double'
short numero = Convert.ToInt16(minhaVariavel); // Converter uma variável para o tipo 'short'
int numero = Convert.ToInt32(minhaVariavel); // Converter uma variável para o tipo 'int'

// Formatação
string formatado = string.Format("{0:0,0.000}", numero); // Formata um número, definindo se usa , ou . e o número de casas depois da vírgula
formatado = numero.ToString(); // Converte para string, aplicando a cultura padrão do servidor, ex: '5,3'
formatado = numero.ToString("F"); // Define o padrão de casas depois da vírgula, padrão: 2
formatado = numero.ToString("F3");
formatado = numero.ToString("N"); // Igual o anterior, porém também adiciona o separador de milhar
formatado = numero.ToString("C"); // Igual o anterior, porém também adiciona o símbolo da moeda
formatado = numero.ToString(cultura); // Definindo uma cultura específica por um objeto de cultura
formatado = numero.ToString("C", cultura); // Definindo o padrão de formatação e a cultura

// Matematica
mumero = Math.Round(numero); // Arredonda para o inteiro mais próximo
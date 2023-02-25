// Declaração / Atribuição
int numero = 1;
float numero = 5.3f; // "f" p/ indicar que é float
double numero = 7.7d; // "d" p/ indicar que é double
decimal numero = 0.5m; // "m" p/ indicar que é decimal

// Além de números pode-se atribuir usando valores binários ou hexadecimais
byte numero = 0b10; // Com valor binário
uint numero = 0x1; // Com valor hexadecimal

// Propriedades
int valorMaximo = int.MaxValue; // Obter o valor máximo p/ o tipo int


/*-------------------- MÉTODOS --------------------*/

// Verificar se uma string é um int ou não, se for retorna o valor int na variável out
bool ehNumero = int.TryParse("1234", out int numero);

// Formatação
string formatado = numero.ToString(); // Converter p/ string, aplicando a cultura padrão do servidor, ex: '5,3'
string formatado = numero.ToString("F"); // Define o padrão de casas depois da vírgula, padrão: 2
string formatado = numero.ToString("F3");
string formatado = numero.ToString("N"); // Igual o anterior, porém também adiciona o separador de milhar
string formatado = numero.ToString("C"); // Igual o anterior, porém também adiciona o símbolo da moeda
string formatado = numero.ToString(cultura); // Definir uma cultura específica por um objeto de cultura
string formatado = numero.ToString("C", cultura); // Definir o padrão de formatação e a cultura

// Matemática
int mumero = Math.Round(numero); // Arredondar p/ o inteiro mais próximo
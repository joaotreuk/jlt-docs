// Tuplas, uma lista com itens de tipos diferentes

// Declaração / Atribuição
(double, int) tupla = (4.5d, 3);
(double Soma, int Qtd) tupla = (4.5d, 3); // Definir um nome para os itens da tupla
var t = (Soma: 4.5, Qtd: 3); // Igual o acima, porém declarando usando o var

// Objeto de tupla
Tuple<int, string> tupla = new Tuple<int, string>(1, "Texto");
Tuple<int, int, int, int, int, int, int> tupla; // Pode ter naturalmente até 7 itens
// Para criar uma tupla com mais de 7 itens pode-se utilizar outra tupla como filha
Tuple<int, int, int, int, int, int, int, Tuple<int, int>> tupla = Tuple.Create(2, 3, 5, 7, 1, 1, 7, 9);

// Propriedades
int qutd = tupla.Item2; // Acessar um item de uma tupla
double soma = tupla.Soma; // Acessar um item com nome de uma tupla
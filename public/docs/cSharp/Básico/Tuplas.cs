// Tuplas, uma lista com itens de tipos diferentes
(double, int) tupla = (4.5, 3);
(double Soma, int Quantidade) tupla = (4.5, 3); // Define um nome para os itens da tupla
var t = (Soma: 4.5, Quantidade: 3);
int quantidade = tupla.Item2; // Acessando um item de uma tupla
double soma = tupla.Soma; // Acessando um item de uma tupla com nome

// Elemento de tupla
Tuple<int, string> tupla = new Tuple<int, string>(1, "Texto");
Tuple<int, int, int, int, int, int, int> tupla; // Uma tupla pode ter naturalmente 7 itens
Tuple<int, int, int, int, int, int, int, Tuple<int>> tupla = Tuple.Create(2, 3, 5, 7, 11, 13, 17, 9); // Para criar uma tupla com mais de 7 itens utiliza se outra tupla
string item = tupla.Item2; // Acessando um item de uma tupla
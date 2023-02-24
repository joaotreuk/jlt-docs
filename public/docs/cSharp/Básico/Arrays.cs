// Declarar uma array com um tamanho específico
int[] matriz = new int[5];

// Declarar uma array com seus valores
int[] matriz = {1, 2, 3};

// Setar um novo valor para uma array
string[] matriz = new string[] {"A", "BB", "CCC"};


/* -------------------- PROPRIEDADES -------------------- */

// Tamanho da array
int tamanho = matriz.Length;


/* -------------------- MÉTODOS -------------------- */

// Copiar um intervalo de uma Array para outra Array
Array.Copy(sourceArray, destinationArray, length);
// Especificar o início de cada array em que será feita a cópia e escrita
Array.Copy(sourceArray, sourceIndex, destinationArray, destinationIndex, length);

// Filtrar de uma Array apenas os itens que cumprem uma condição especificada (Predicate<T>)
string[] matriz = Array.FindAll(matriz, predicado);

// Obter o índice da primeira ocorrência de um determinado item em uma array
int indice = Array.IndexOf(matriz, item);
// Pesquisar do índice passado até o final da array
int indice = Array.IndexOf(matriz, item, indiceInicial); 
// Pesquisar apenas uma quantidade x de itens a partir do índice inicial
int indice = Array.IndexOf(matriz, item, indiceInicial, quantidade);

// Combinar uma array em uma string, separa os itens da array pela string específicada
string texto = string.Join("','", matriz);
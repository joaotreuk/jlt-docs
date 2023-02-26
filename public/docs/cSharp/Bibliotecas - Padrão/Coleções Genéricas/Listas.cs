// Criando uma lista de um tipo determinado
List<Item> lista = new List<Item>();
IList<object> lista = new IList<object>(); // Utilizando via interface, para quando se está criando uma biblioteca por exemplo

/*-------------------- PROPRIEDADES --------------------*/
int quantidade = lista.Count; // Retorna a quantidade de itens na lista

/*-------------------- MÉTODOS --------------------*/
/// <summary>Adicionando um novo item a lista</summary>
lista.Add(item);

/// <summary>Cria um laço que percorre cada item da lista</summary>
lista.ForEach(item => {});

/// <summary>Busca o índice de um determinado item</summary>
/// <param name="item">Item cujo índice será buscado</param>
/// <returns>O índice do item buscado</returns>
int indice = lista.IndexOf(item);

/// <summary>Reverte a ordem dos elementos na lista</summary>
lista.Reverse();

/// <summary>Ordena a lista, se a condição retornar um inteiro positivo B aparece antes, se for negativo A aparece antes, se for 0 não muda a ordem</summary>
lista.Sort((Item a, Item b) => condicao);
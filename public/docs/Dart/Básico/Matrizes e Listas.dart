// Listas
List<Objeto> lista = <Objeto>[]; // Lista padrão
List lista = List(); // Lista genérica
Set<Objeto> lista = Set<Objeto>(); // Lista que não permite valores repetidos

// Retorna o tamanho da matriz
matriz.length;

// Obtem o primeiro item de uma lista
lista.first

// Manipulando elementos de uma matriz
matriz.contains(variavel); // Verifica se uma matriz contém uma variável
matriz.remove(variavel); // Remove uma variável da matriz
lista.removeAt(2) // Remove um item da lista pelo seu índice

// Adicionar um item
lista.add(item); // Adiciona um item para uma matriz ou lista
lista.insert( // Adiciona um item em uma posição específica
  3, // Índice em que será inserido o item
  item
);

// Ordenar uma lista, compara item por item para ver qual é mais equivalente perante a função
lista.sort((item1, item2) {
  if (item1 > item2) return 1; // Retornar 1, faz o item 2 ser classificado antes do item 1 na lista
  else if (item1 < item2) return -1; // Retornar -1, faz o item 1 ser classificado antes do item 2 na lista
  return 0; // Retornar 0 faz a ordem não ser alterada
});
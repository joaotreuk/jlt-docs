// Propriedades
matriz.length = 10; // Número de itens na array, pode-se redefinir o tamanho da array

matriz.push("Valor"); // Adicionar um elemento a uma aray
matriz.push("Valor", "Valor2"); // Adicionar mais de um elemento a uma aray
Matriz.shift() // Remove o primeiro elemento de uma array
Matriz.pop() // Remove o último elemento de uma array, e retorna o mesmo

Matriz.splice(1, 2) // Remove 2 elementos apartir do index 1, e retorna os elementos removidos
Matriz.splice(2, 0, "Carro") // Adiciona um elemento apartir do index 2
Matriz.splice(3, 0, "Carro", "Moto") // Adiciona dois elementos
Matriz.splice(-1, 1, "Carro") // Remove um elemento e adiciona outro, apartir da index do ultimo elemento

// Verifica se um elemento é array
Array.isArray(Matriz) 

// Transformação
Array.from(texto) // Transforma uma string ou um HTMLCollection em uma array
matriz.toString() // Transforma uma array em uma string separada por virgulas
matriz.join() // Transforma uma array em uma string separada por vírgula
matriz.join('. ') // Transforma uma array em uma string separada por uma string especificada

// Junta duas ou mais matrizes em uma nova matriz
NovaMatriz = Matriz.concat(Matriz2, Matriz3/*, ...*/)

// Retorna a posição da string "Exemplo" na array, se não tiver esta string na array entao retorna -1
Matriz.indexOf("Exemplo") 
Matriz.indexOf("Exemplo", 4) // Indica apartir de qual posição começa a procurar

// Verifica se um elemento esta na array
matriz.includes(Elemento)
matriz.includes(Elemento, 3) // Começa a procurar apartir do elemento 3

// Ordenar uma array
lista.sort() // Ordenação padrão, os itens são transformados em string então ordenados pelo seu código unicode, exemplo de ordem: [80, 9, 'B', 'b', objeto]
lista.sort((a, b) => { // Ordenando usando uma função de comparação, a e b são os itens sendo comparados
    if (a > b) return 1 // Retorna 1 para definir que o item "a" deve aparecer antes do item "b" na ordenação
    if (a < b) return -1 // Retorna -1 para definir que o item "b" deve aparecer antes do item "a" na ordenação
    return 0 // Retorna 0 para não mudar a ordem
})
lista.sort((a, b) => a - b) // Função de comparação para ordenar números de forma crescente

NovaMatriz = Matriz.map(Elemento => Elemento.ID) // Cria uma nova array com o retorno da função
NovaMatriz = Matriz.filter(Elemento => Elemento >= 0) // Cria uma nova array filtrando da array original os elementos cujo retorno seja true
Matriz.findIndex(Elemento => Elemento == "Exemplo") // Retorna a index do primeiro elemento que obtenha um retorno true na função
[175, 50, 25].reduce((total, numero, Index, Array) => total - numero) // Subtrai ou soma os números de uma array começando pela esquerda

// Funções que percorrem todos elementos da array
Matriz.forEach((Valor, Index, Array) => console.log(Valor)) 
for (const string of Matriz.entries()) { console.log(string[1]) } // Laço for que não usa uma subfunção, pega o [1] da string porque o [0] é 0
let todosItensPassaram = matriz.every((valor, indice, matriz) => condicao) // Pode ser quebrada, retorna se todos os itens retornaram verdadeiro para a condição ou não
Matriz.some((Valor, Index, Array) => { if (Continuar) { return false } return true }) // Igual a anterior, mas o return é invertido

// Converte uma matriz de bytes C# para uma matriz de bytes javascript
new Uint8Array(data)
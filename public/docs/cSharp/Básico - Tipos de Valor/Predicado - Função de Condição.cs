// Predicado é função de retorno booleano, com um parâmetro de um tipo determinado
// Pode ser usada p/ fazer comparação do elemento de parâmetro
// No lugar de passar a função diretamente pode-se criar uma variável da função p/ simplificar o código

// Declaração / Atribuição
Predicate<string> predicado = (texto) => { return texto != null; };
Predicate<int> predicado = (num) => num == 1; // Predicado simplificado


/*-------------------- MÉTODOS --------------------*/

// Executar a função do predicado passando o parâmetro
bool resultado = predicado.Invoke(variavel);
/*-------------------- Definição --------------------*/
/// <summary>Predicado é uma variável que carrega uma função booleana que visa comparar um elemento</summary>
Predicate<string> predicado = (elemento) => { return elemento != null; };
Predicate<int> predicado = (elemento) => elemento == 1; // Predicado simplificado

/// <summary>Predicado pode ser usado como parâmetro para outros métodos</summary>
int[] matriz = Array.FindAll(array, predicado);

/*-------------------- MÉTODOS --------------------*/
/// <summary>Executa a função do predicado</summary>
/// <param name="obj">Elemento a ser passado de parâmetro ao predicado</param>
/// <returns>Booleano que diz se o elemento cumpriu a condição ou não</returns>
bool resultado = predicado.Invoke(obj);
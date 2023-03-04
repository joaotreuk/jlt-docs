// Criando um parâmetro
SqlParameter parametro = new SqlParameter("NomeParametro", "Valor");
SqlParameterCollection parametros = comando.Parameters; // Lista de parâmetros de uma consulta
parametro = comando.Parameters[0]; // Acessando um parâmetro por seu índice
parametro = comando.Parameters["NomeParametro"]; // Acessando um parâmetro por seu nome

// Métodos
parametro = parametros.Add(parametro); // Adiciona um parâmetro para a lista, retorna o mesmo
parametro = parametros.AddWithValue("NomeParametro", "Valor"); // Adiciona um parâmetro para a lista pelo seu nome e valor, retorna o parâmetro criado
parametros.Clear(); // Remove todos parâmetros
parametros.RemoveAt(0); // Remove um parâmetro pelo seu índice
parametros.RemoveAt("NomeParametro"); // Remove um parâmetro pelo seu nome
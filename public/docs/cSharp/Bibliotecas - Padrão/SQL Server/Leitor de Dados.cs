// Inicia um leitor de dados
SqlDataReader leitor = comando.ExecuteReader();
SqlDataReader leitor = await comando.ExecuteReaderAsync(); // Igual o método acima, porém assíncrono
object dado = leitor[0]; // Obtém um valor genérico pelo seu índice
object dado = leitor["NomeColuna"]; // Obtém um valor genérico pelo nome da coluna

// Propriedades
bool temLinhas = leitor.HasRows; // Retorna se o leitor possui ou não linhas

// Métodos
leitor.Close(); // Termina o leitor de dados
string dado = leitor.GetString(0); // Obtém uma string da coluna do índice especificado, 0 seria a primeira coluna
object dado = leitor.GetValue(1); // Obtém um valor genérico (object) do banco
bool nulo = leitor.IsDBNull(0); // Retorna se o valor do índice é DBNull ou não
bool nulo = await leitor.IsDBNullAsync(0); // Igual o método acima, porém assíncrono
bool contemMaisResultados = leitor.NextResult(); // Seta o leitor para o próximo resultado SQL e continua setando até não haver mais resultados
bool contemMaisResultados = await leitor.NextResultAsync(); // Igual o método acima, porém assíncrono
while (leitor.Read()) {} // Cria um laço que percorre cada linha de dados trazidos do banco de dados
bool contemDados = await leitor.ReadAsync(); // Igual o método acima, porém assíncrono
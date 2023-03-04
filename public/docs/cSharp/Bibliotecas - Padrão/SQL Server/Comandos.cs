using System.Data;
using System.Data.SqlClient;

// Criado um comando
SqlCommand comando = new SqlCommand(query, conexao);
SqlCommand comando = new SqlCommand(query, conexao, transacao);
SqlCommand comando = conexao.CreateCommand(); // Cria um comando a partir de sua conexão

// Propriedades
comando.CommandText = "SELECT Coluna FROM Tabela"; // Define o texto do comando
comando.CommandTimeout = 120; // Tempo máximo de aguardo para a consulta ser realizada
comando.CommandType = CommandType.StoredProcedure; // Define o tipo do comando SQL (Procedimento armazenado, texto com query)
comando.Connection = conexao; // Define uma conexão para um comando
comando.Transaction = transacao; // Define uma transação para um comando

// Métodos
int linhasAfetadas = comando.ExecuteNonQuery(); // Executa o comando e retorna o número de linhas afetadas
int linhasAfetadas = await comando.ExecuteNonQueryAsync(); // Igual o método acima, porém assíncrono
object retorno = comando.ExecuteScalar(); // Executa o comando e recebe um valor único de retorno
object retorno = await comando.ExecuteScalarAsync(); // Igual o método acima, porém assíncrono
using System.Data;
using System.Data.SqlClient;

// Declaração / Atribuição
SqlCommand comando = new SqlCommand(query, conexao);
SqlCommand comando = new SqlCommand(query, conexao, transacao);
SqlCommand comando = conexao.CreateCommand(); // Cria um comando a partir de sua conexão


/*-------------------- PROPRIEDADES --------------------*/

// Define o texto do comando
comando.CommandText = "SELECT Coluna FROM Tabela";

// Tempo máximo de aguardo para a consulta ser realizada
comando.CommandTimeout = 120; 

// Define o tipo do comando SQL (Procedimento armazenado, texto com query)
comando.CommandType = CommandType.StoredProcedure;
comando.CommandType = CommandType.Text; // Default

// Define uma conexão para um comando
comando.Connection = conexao;

// Define uma transação para um comando
comando.Transaction = transacao;


/*-------------------- MÉTODOS --------------------*/

int linhasAfetadas = comando.ExecuteNonQuery(); // Executa o comando e retorna o número de linhas afetadas
int linhasAfetadas = await comando.ExecuteNonQueryAsync(); // Igual o método acima, porém assíncrono
object retorno = comando.ExecuteScalar(); // Executa o comando e recebe um valor único de retorno
object retorno = await comando.ExecuteScalarAsync(); // Igual o método acima, porém assíncrono
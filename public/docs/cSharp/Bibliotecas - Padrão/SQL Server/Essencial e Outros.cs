// Colocar comandos de abrir conexão e de executar comandos dentro de try catch para manipular possíveis erros de conexão
using System.Data.SqlClient;

// Obtem uma string de conexão do arquivo web.config
string conexao = ConfigurationManager.ConnectionStrings["NomeConexao"].ConnectionString;

// Objeto equivalente ao nulo do SQL Server
object nulo = Convert.DBNull;
nulo = DBNull.Value;
Convert.IsDBNull(Valor) // Verifica se valor é NULL do banco de dados
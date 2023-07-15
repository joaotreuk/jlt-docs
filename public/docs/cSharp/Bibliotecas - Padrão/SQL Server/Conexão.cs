// Conexão com banco de dados
using SqlConnection conexao = new SqlConnection("StringDeConexao");

// Propriedades
conexao.State; // Estado da conexão, exemplo: "ConnectionState.Closed" indica que a conexão está fechada

// Métodos
conexao.Close(); // Fecha a conexão
conexao.Open(); // Abre a conexão
await conexao.OpenAsync(); // Abre a conexão de forma assíncrona
// Configurações do aplicativo
// Por exemplo o 'web.config' é um arquivo onde é possível salvar configurações
using System.Configuration;

/*-------------------- PROPRIEDADES --------------------*/

// Obter um configuração da tag 'appSettings', passando a chave do valor que deseja obter
// Exemplo desta tag no 'web.config' em: Frameworks -> .NET Framework -> Configurando Web
string chaveSeguranca = ConfigurationManager.AppSettings["SecurityKey"];

// Obter um configuração da tag 'connectionStrings', passando o nome da string de conexão que deseja obter
// Exemplo desta tag no 'web.config' em: Frameworks -> .NET Framework -> Configurando Web
ConnectionStringSettings configConexoes = ConfigurationManager.ConnectionStrings["Padrao"];

// Gerenciando strings de conexão configuradas para o aplicativo
/*-------------------- PROPRIEDADES --------------------*/

// Obter a string de conexão
string stringConexao = configConexoes.ConnectionString;

// Obter o nome definido para a string de conexão
string nome = configConexoes.Name;
// Biblioteca para gerenciar tarefas de fundo
// Configurações devem ser feitas no método 'Configuration' do arquivo de inicialização do OWIN
using Hangfire;

/*-------------------- PROPRIEDADES --------------------*/

// Configurações globais
IGlobalConfiguration configGlobal = GlobalConfiguration.Configuration; // (Apenas leitura)

/*-------------------- MÉTODOS --------------------*/

// Usar a biblioteca armazenando as informações em memória
using Hangfire.MemoryStorage;
// Retorna o próprio configurador para poder adicionar mais configurações em forma de corrente
IGlobalConfiguration<MemoryStorage> config = configGlobal.UseMemoryStorage();

// Usar a biblioteca armazenando as informações em um banco de dados no SQL Server
using Hangfire.SqlServer;
// Retorna o próprio configurador para poder adicionar mais configurações em forma de corrente
IGlobalConfiguration<SqlServerStorage> config = GlobalConfiguration.Configuration.UseSqlServerStorage("minhaStringDeConexao");

/*-------------------- DASHBOARD --------------------*/

// Define se o aplicativo usará a dashboard de gerenciamento de tarefas
// Retorna o próprio IAppBuilder para poder aproveitar a corrente de configurações do Owin
app = app.UseHangfireDashboard(); // Usando as configurações padrão
app = app.UseHangfireDashboard("/hangfire"); // Define o endereço URL da dashboard
app = app.UseHangfireDashboard("/hangfire", opcoesDashboard); // Define também um objeto com configurações para a dashboard
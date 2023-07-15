// Logar informações no console
using Microsoft.Extensions.Logging;

// Injetar o logger em um controller
private readonly ILogger<EntidadeController> _logger;
public EntidadeController(ILogger<EntidadeController> logger) { _logger = logger; }

// Logar, métodos abaixo estão em ordem de severidade
_logger.LogTrace("Mensagem de trace");
_logger.LogDebug("Usuário {0} fez login com sucesso.", "jltreuk"); // Mensagem com parâmetros
_logger.LogInformation("Mensagem de informação");
_logger.LogWarning("Mensagem de aviso");
_logger.LogError("Mensagem de erro");
_logger.LogCritical("Mensagem crítica");

// Nível do log
LogLevel logLevel = LogLevel.Critical;
LogLevel logLevel = LogLevel.Error;
string texto = logLevel.ToString(); // Para string

/*-------------------- LOGAR NO BANCO DE DADOS --------------------*/

// Classe do logger p/ logar no banco de dados, implementando o ILogger
public class DbLogger : ILogger
{
  public IDisposable? BeginScope<TState>(TState state) where TState : notnull => null;

  // Whether to log the entry
  public bool IsEnabled(LogLevel logLevel)
  {
    return logLevel == LogLevel.Error;
  }

  // Método em que deve-se gravar no banco de dados
  public void Log<TState>(LogLevel logLevel, EventId eventId, TState state, Exception? exception,
    Func<TState, Exception?, string> formatter)
  {
    // Mensagem do log
    string msg = formatter(state, exception);
  }
}

// Criar um provider para logar no banco de dados implementando o provider do logger
[ProviderAlias("Database")]
public class DbLoggerProvider : ILoggerProvider
{
  // Receber configurações do DbLoggerExtensions
  public DbLoggerProvider(IOptions<DbLoggerOptions> options) { _options = options.Value; }

  // Retorna o logger do banco de dados
  public ILogger CreateLogger(string categoryName)
  {
    return new DbLogger();
  }

  public void Dispose() { }
}

// Extender o construtor do logger com método p/ adicionar o provider
public static class DbLoggerExtensions
{
  // 'Action<DbLoggerOptions> configure' apenas se for passar configurações
  public static ILoggingBuilder AddDbLogger(this ILoggingBuilder builder, Action<DbLoggerOptions> configure)
  {
    builder.Services.AddSingleton<ILoggerProvider, DbLoggerProvider>();
    builder.Services.Configure(configure); // (Opcional) passar configurações p/ o provider
    return builder;
  }
}

// Adicionar o dblogger no contrutor do app
builder.Logging.AddDbLogger();
// Passando configurações
builder.Logging.AddDbLogger(options =>
{
  builder.Configuration.GetSection("Logging").Bind(options);
});
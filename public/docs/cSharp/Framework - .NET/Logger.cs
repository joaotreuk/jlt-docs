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
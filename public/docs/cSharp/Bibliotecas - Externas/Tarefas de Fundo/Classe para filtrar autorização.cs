// Classe que contém validação de acesso para a dashboard
using Hangfire.Dashboard;

/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/

public class MyAuthorizationFilter : IDashboardAuthorizationFilter { }

/*-------------------- MÉTODOS --------------------*/

// Método que retorna se o acesso será autorizado ou não
public bool Authorize(DashboardContext contexto) { }

// Obter um dicionário com informações de ambiente do OWIN
// Pode ser usado para criar um contexto do OWIN e manipular informações da requisição HTTP
IDictionary<string, object> ambienteOwin = contexto.GetOwinEnvironment();
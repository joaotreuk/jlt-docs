// O OWIN permite que os aplicativos Web sejam separados dos servidores Web.
// Ele define uma maneira padrão de usar o middleware em um pipeline para manipular solicitações e respostas associadas.
using Owin;

// Arquivo de inicialização do OWIN no aplicativo
// É possível criar um arquivo de inicialização do OWIN automaticamente no Visual Studio indo em:
// Adicionar -> Adicionar Novo Item -> Web -> Geral -> Classe de Inicialização do OWIN
[assembly: OwinStartup(typeof(MeuAplicativo.Startup))] // Usado para marcar qual classe deve ser usada para a inicialização
namespace MeuAplicativo { public class Startup {} }

/*-------------------- MÉTODOS --------------------*/

// Configurar middlewares e outras coisas para o aplicativo, na classe de inicialização do OWIN
public void Configuration(IAppBuilder app) { }
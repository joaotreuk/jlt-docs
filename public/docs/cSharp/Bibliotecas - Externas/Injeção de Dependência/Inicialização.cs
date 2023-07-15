// Bilbioteca para propósitos gerais de container de inversão de controle
/* O UnityContainer é responsável por gerenciar o ciclo de vida dos tipos. Geralmente, o ciclo de vida padrão é Transient, o que
significa que uma nova instância será criada sempre que o contexto for injetado em uma dependência */
using Unity;
using Unity.Mvc5;

/*-------------------- INICIALIZAÇÃO --------------------*/

// No Global.asax.cs chamar um método que inicialize o container registrando as dependências

/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/

// Criando um novo container
UnityContainer container = new UnityContainer();
IUnityContainer container = new UnityContainer();

/*-------------------- MÉTODOS --------------------*/

// Registrar um tipo para o container
/* Quando um Tipo é registrado, a Unity cria um contrato (um registro) que consiste em um Tipo, um Nome e instruções sobre como este
contrato deve ser cumprido quando solicitado */
// Dessa forma o serviço registrado poderá ser injetado como dependência
// É retornado o próprio container para poder aproveitar a corrente de registros
container = container.RegisterType<MeuProjetoDataContext>();
// Defindo um nome para o registro
container = container.RegisterType<MeuProjetoDataContext>("Contexto do banco de dados");
// Registro usando mapeamento p/ um tipo, a interface será injetada como dependência, e as execuções serão mapeadas p/ a classe do serviço
container = container.RegisterType<IMeuServico, MeuServico>();
// Uma interface pode ser mapeada para diversas classes, então usa-se o nome para diferir os registros
container = container.RegisterType<IMeuServico, MeuServico2>("Meu serviço");
// Definindo o tipo de ciclo de vida que será usado para o registro (Tipos de ciclo de vida)
// Por padrão usa Transient
container = container.RegisterType<MeuProjetoDataContext>("Meu serviço", TypeLifetime.Singleton);
container = container.RegisterType<IMeuServico, MeuServico2>("Meu serviço", TypeLifetime.Singleton);

/* Configure UnityContainer as the dependency resolver for the application, which means that whenever the ASP.NET MVC framework needs to
resolve a dependency, it will use UnityContainer */
DependencyResolver.SetResolver(new UnityDependencyResolver(container));

/* Explicitly resolve a specific instance or type from the container. It directly retrieves an instance from the container by specifying
the type you want to resolve */
var dataContext = container.Resolve<DataContext>();
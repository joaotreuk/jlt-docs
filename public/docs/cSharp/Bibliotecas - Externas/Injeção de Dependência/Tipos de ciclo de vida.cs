using Unity;
using Unity.Lifetime;

/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/

// Uma única instância é criada durante toda a vida da aplicação
ITypeLifetimeManager tipo = TypeLifetime.Singleton;

// Tipo de ciclo de vida padrão dos containers
// O serviço tem um clico de vida praticamente inexistente, tendo que sempre ser instanciado
ITypeLifetimeManager tipo = TypeLifetime.Transient;
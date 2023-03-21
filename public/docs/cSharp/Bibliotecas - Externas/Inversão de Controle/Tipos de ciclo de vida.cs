using Unity;
using Unity.Lifetime;

/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/

// O serviço é instanciado apenas um vez
// O código só passa pelo construtor uma vez, daí fica com o objeto salvo em cache
ITypeLifetimeManager tipo = TypeLifetime.Singleton;

// Tipo de ciclo de vida padrão dos containers
// O serviço tem um clico de vida praticamente inexistente, tendo que sempre ser instanciado
ITypeLifetimeManager tipo = TypeLifetime.Transient;
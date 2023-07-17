// Classe de acesso a serviços
// Pode ser injetada em qualquer classe da aplicação
private readonly IServiceScopeFactory _serviceProvider;

// Classes singleton não podem receber injeções de classes scoped, então deve-se criar escopos dentro de seus métodos p/ usá-las
using IServiceScope scope = _serviceProvider.CreateScope();

// Acessar um serviço scoped
// Não precisa usar using porque o scope já garante o dispose
DbContexto? _contexto = scope.ServiceProvider.GetService<DbContexto>();
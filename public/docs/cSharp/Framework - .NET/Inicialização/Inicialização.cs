// Arquivo de define configurações de inicialização de um projeto
// Nome do arquivo: "Program.cs"

// Cria uma instância de configurações da aplicação com os defaults
WebApplicationBuilder builder = WebApplication.CreateBuilder(args);

// Obter configurações (appsettings.json)
var section = builder.Configuration.GetSection("ConnectionStrings");
string? connection = builder.Configuration.GetConnectionString("DefaultConnection"); // Obter ConnectionStrings.DefaultConnection

// Adicionar serviço de controllers para API
builder.Services.AddControllers();

// Adicionar serviços de contêiner de injeção de dependências
// Objetos que teram seu ciclo de vida gerenciados pelo contêiner. Podendo serem injetados no método construtor de controllers ou classes
// O contêiner de injeção de dependência será responsável por criar uma instância do objeto e injetá-la automaticamente no controlador
// O contêiner fará o dispose no final do tipo de escopo definido
// Injeção de dependencia também serve para evitar ter que ficar criando instâncias de dependencias manualmente
/*
  Tipos de escopos de injeção de dependencia:
  Transient: Uma nova instância é criada a cada solicitação HTTP.
  Scoped: Uma instância é criada para cada escopo de solicitação HTTP. É a opção mais comumente usada em aplicativos web.
  Singleton: Uma única instância é criada durante toda a vida da aplicação
*/
builder.Services.AddScoped<EntidadeRepository>(); // Adicionar um Scoped
builder.Services.AddScoped<IEntidadeRepository, EntidadeRepository>(); // Especificar o tipo e a classe que o implementa
builder.Services.AddSingleton<ILoggerProvider, DbLoggerProvider>(); // Adicionar um Singleton

// Contexto do banco de dados, Scoped por padrão
builder.Services.AddDbContext<DbContexto>();
builder.Services.AddDbContext<DbContexto>(options => {}); // Configurar opções

// Constroi a web aplicação
WebApplication app = builder.Build();

// Acessar serviços configurados
using IServiceScope scope = app.Services.CreateScope(); // Criar um escopo (para usar serviços Scoped)

// Verifica se está dando build em um ambiente de desenvolvimento
bool isDevelopment = app.Environment.IsDevelopment();

// Registrar opções de web aplicações
app.UseHttpsRedirection();
app.UseAuthentication(); // Define que o aplicativo usa alguma autenticação que foi adicionada
app.UseAuthorization();
app.MapControllers();

// Após concluir configurações, rodar a aplicação
app.Run();

/*-------------------- DEPRECIADO --------------------*/

// Versões anteriores do .net usavam o arquivo Startup.cs para aplicar essas configurações

public IConfiguration Configuration { get; }
public Startup(IConfiguration configuration)
{
  Configuration = configuration;
}

// This method gets called by the runtime. Use this method to add services to the container.
// O services é equivalente ao builder.Services atual
public void ConfigureServices(IServiceCollection services)
{
  // Adicionar para permitir request de origens cruzadas
  services.AddCors();
}

// This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
{
  // Página de exceção para desenvolvimento
  app.UseDeveloperExceptionPage();  

  app.UseCors(x => x.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader());

  // Se o aplicativo permite utilizar imagens e acessar elas por suas rotas
  // Imagens ficam em -> wwwroot -> img
  // No caso acessaria a imagem por: meusite:porta/img/MinhaImagem.png
  app.UseStaticFiles();

  app.UseHttpsRedirection();

  app.UseRouting();

  app.UseEndpoints(endpoints =>
  {
    endpoints.MapControllers();
  });
}
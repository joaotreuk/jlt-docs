// Arquivo de define configurações de inicialização de um projeto
// Nome do arquivo: "Program.cs"

// Cria uma instância de configurações da aplicação com os defaults
var builder = WebApplication.CreateBuilder(args);

// Adicionar serviço de controllers para API
builder.Services.AddControllers();

// Contêiner de injeção de dependências
// Objetos que teram seu ciclo de vida gerenciados pelo contêiner. Podendo serem injetados no método construtor de controllers ou classes
// O contêiner de injeção de dependência será responsável por criar uma instância do objeto e injetá-la automaticamente no controlador
// O contêiner fará o dispose no final do tipo de escopo definido
/*
  Tipos de escopos de injeção de dependencia:
  Transient: Uma nova instância é criada a cada solicitação HTTP.
  Scoped: Uma instância é criada para cada escopo de solicitação HTTP. É a opção mais comumente usada em aplicativos web.
  Singleton: Uma única instância é criada durante toda a vida da aplicação.
*/
builder.Services.AddDbContext<DbContexto>(); // Contexto do banco de dados
builder.Services.AddScoped<IEntidadeRepository, EntidadeRepository>(); // Interfaces X classes

// Constroi a web aplicação
var app = builder.Build();

// Verifica se está dando build em um ambiente de desenvolvimento
bool isDevelopment = app.Environment.IsDevelopment();

// Registrar opções de web aplicações
app.UseHttpsRedirection();
app.UseAuthorization(); // Autenticação
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

  // Define que o aplicativo usa alguma autenticação que foi adicionada
  app.UseAuthentication();

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
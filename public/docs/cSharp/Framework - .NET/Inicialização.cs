// Arquivo de define configurações de inicialização de um projeto
// Nome do arquivo: "startup.cs"

// Para usar uma versão mais antiga do .NET instalada, precisa definila no arquivo global.json na pasta raiz do projeto
// Como no exemplo abaixo
/*
Arquivo "global.json":
{
    "sdk": {
        "version": "2.2.401"
    }
}
*/

// Configurações de Lançamento
// Arquivo "launchSettings.json"
/*
{
  "$schema": "http://json.schemastore.org/launchsettings.json",
  "iisSettings": {
    "windowsAuthentication": false,
    "anonymousAuthentication": true,
    "iisExpress": {
      "applicationUrl": "http://localhost:48481",
      "sslPort": 44316
    }
  },
  "profiles": {
    "IIS Express": {
      "commandName": "IISExpress",
      "launchBrowser": true,
      "launchUrl": "weatherforecast",
      "environmentVariables": {
        "ASPNETCORE_ENVIRONMENT": "Development"
      }
    },
    "ProAgil.WebAPI": {
      "commandName": "Project",
      "launchBrowser": false, # Se abre o navegador ao rodar a aplicação ou não
      "launchUrl": "weatherforecast",
      "applicationUrl": "https://localhost:5001;http://localhost:5000", # Define se roda por https e/ou http, a porta pode ser alterada
      "environmentVariables": {
        "ASPNETCORE_ENVIRONMENT": "Development" # Se a alicação está em versão de desenvolvimento ou produção
      }
    }
  }
} */

// Configurações de build
// Existe um arquivo de configuração "appsettings.json" p/ o projeto e um apenas p/ o desenvolvimento "appsettings.Development.json"
/*
{
  # String de conexão com um banco de dados
  "ConnectionStrings": {
    "DefaultConnection": "Data Source=ProAgil.db"
  }
} */

namespace ProAgil.WebAPI
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddControllers();
            
            // Adicionar para permitir request de origens cruzadas
            services.AddCors();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            // Verifica se o projeto está rodando em ambiente de desenvolvimento
            if (env.IsDevelopment())
            {
                // Página de exceção para desenvolvimento
                app.UseDeveloperExceptionPage();
            }

            // Define que o aplicativo usa alguma autenticação que foi adicionada
            app.UseAuthentication();

            app.UseCors(x => x.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader());

            // Se o aplicativo permite utilizar imagens e acessar elas por suas rotas
            // Imagens ficam em -> wwwroot -> img
            // No caso acessaria a imagem por: meusite:porta/img/MinhaImagem.png
            app.UseStaticFiles();

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
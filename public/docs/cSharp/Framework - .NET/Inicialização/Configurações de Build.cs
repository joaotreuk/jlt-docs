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

// Existe um arquivo de configuração "appsettings.json" p/ o projeto e um apenas p/ o desenvolvimento "appsettings.Development.json"
/*
{
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft.AspNetCore": "Warning"
    }
  },

  "AllowedHosts": "*",

  # String de conexão com um banco de dados
  "ConnectionStrings": {
    "DefaultConnection": "Data Source=ProAgil.db"
  }
} */
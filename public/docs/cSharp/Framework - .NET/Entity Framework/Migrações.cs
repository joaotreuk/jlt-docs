// Migrações são alterações ao banco de dados, dessa forma o aplicativo fica resposável p/ alterações em cada servidor
// Pacote para criar migrações
using Microsoft.EntityFrameworkCore.Design;

// Instalar comandos de console do pacote
//dotnet tool install --global dotnet-ef

// Adicionando o caminho do projeto dotnet, caso o contexto de dados esteja em um outro projeto
//dotnet ef --startup-project ..\ProAgil.WebAPI\ migrations add init 

// Criar uma migração com as novas alterações
//dotnet ef migrations add initial_create

// Remove a última migração que ainda não tenha sido aplicada ao banco de dados
//dotnet ef migrations remove

// Aplica as migrações ao banco de dados
//dotnet ef database update
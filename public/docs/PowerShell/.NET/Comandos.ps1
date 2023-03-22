# Comandos de terminal:

# Versões do .NET instaladas
dotnet --version # Ver versão sendo usada
dotnet --list-sdks # Ver todas as versões instaladas

# Ver ajuda sobre os possíveis comandos:
dotnet -h ou -help

# Criação de novos projetos
dotnet new -h ou -help # Ver ajuda sobre a criação de um novo projeto
dotnet new console -n NomeAplicativo # Cria um aplicativo .net para console, "-n' indica o nome do aplicativo
dotnet new classlib -n NomeBiblioteca # Cria uma biblioteca C#
dotnet new sln -n NomeAplicativo # Cria uma solução C#, está que engloba vários projetos
dotnet new web -n NomeAplicativo.Web # Projeto web mais cru, sem nada de MVC
dotnet new webapi -n NomeAplicativo.API # Projeto com Controller, ideal para o caso de não se for trabalhar com Razor
dotnet new mvc -n NomeAplicativo.MVC # Projeto MVC completo com Controller, Models, Views e Razor

# Rodar o aplicativo da pasta atual
dotnet run
dotnet run --project .\Projeto\Projeto.csproj # Rodar um projeto direto de uma solução
dotnet watch run # Acompanha mudanças de código no projeto, quanto uma mudança é detectada ele re-executa o projeto

# Controle de depêndencias
dotnet add MeuApp\MeuApp.csproj reference Biblioteca\Biblioteca.csproj # Adiciona um depêndencia para um projeto
dotnet sln MeuApp.sln add MeuApp\MeuApp.csproj Biblioteca\Biblioteca.csproj # Adiciona um ou mais projetos para uma solução
dotnet add package Microsoft.EntityFrameworkCore # Adicionar um pacote, para a versão atual do framework
dotnet remove package NomePacote # Remove um pacote do projeto ou solução atual

# Compilar um projeto ou uma solução
dotnet build
dotnet restore # Restaura todos projetos da solução. Compila, limpa e recria as dlls
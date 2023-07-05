# Instalação
dotnet add package Microsoft.EntityFrameworkCore.Design # Necessário para fazer migrations e modificar bancos
dotnet tool install --global dotnet-ef # Instalar os comandos da biblioteca

# Migrações são atualizações do banco de dados, sempre que uma modificação é feita para o banco deve-se criar uma migração para a mesma
# Cria os arquivos de migração para os as propriedades BbSet<Classe> especificadas no arquivo de contexto do banco de dados
dotnet ef migrations add CriacaoInicial
dotnet ef --startup-project ..\ProAgil.WebAPI\ migrations add init # Adicionando o caminho do projeto dotnet, caso o contexto de dados esteja em um outro projeto
dotnet ef migrations remove # Remove a última migração que ainda não tenha sido aplicada ao banco de dados

# Atualiza o arquivo .db do Sqlite com base nas migrações
dotnet ef database update
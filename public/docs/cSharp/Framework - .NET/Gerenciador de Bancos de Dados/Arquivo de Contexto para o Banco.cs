using Microsoft.EntityFrameworkCore;

namespace MeuAplicativo.Data
{
    public class ContextoBanco : DbContext
    {
        // Definindo uma tabela que será gerada pelos comandos da biblioteca a partir de uma classe
        // Também pode ser usada como uma query
        // DbSet tem os mesmo métodos de "Evento[]"
        public DbSet<Tabela> Itens { get; set; }

        // Definindo a string de conexão com Sqlite e o nome do arquivo do banco de dados
        protected override void OnConfiguring(DbContextOptionsBuilder opcoes) => opcoes.UseSqlite("Data Source=MeuAplicativo.db");

        // Sobrescrevendo método para definir chaves compostas de tabelas
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Tabela>().HasKey(tabela => new { 
                tabela.Id1, // Cada campo que compõe a chave composta
                tabela.Id2
            });
        }
    }
}
 
// Adicionar para o arquivo "Startup.cs" para o contexto de dados ser adicionado ao projeto antes dos controladores
services.AddDbContext<DataContext>();

// Adicionar o escopo do serviço usando a interface e a classe a qual a interface se aplica, logo após o serviço acima
services.AddScoped<IProAgilRepositorio, ProAgilRepositorio>();

// Manipulando dados pelo contexto
ContextoBanco.Add(Item); // Adicionar um item para sua tabela
ContextoBanco.Update(Item); // Atualizar um item
ContextoBanco.Remove(Item); // Deletar um item
ContextoBanco.RemoveRange(Itens); // Deletar uma array de itens
int linhasAfetadas = ContextoBanco.SaveChanges(); // Salvar mudança de um item (Adicionar, Atualizar, Deletar)
int linhasAfetadas = await ContextoBanco.SaveChangesAsync(); // Igual o método acima porém assíncrono

// Rastreamento de entidade
// Define se manterá informações sobre uma instância de entidade em seu rastreador de alterações
// Se uma entidade for rastreada, quaisquer alterações detectadas na entidade serão persistidas no banco de dados durante SaveChanges()
query = query.AsNoTracking(); // Definindo que uma query do LINQ não é rastreável
CContextoBanco.ChangeTracker.QueryTrackingBehavior = QueryTrackingBehavior.NoTracking; // Defindo que nenhuma query do contexto será rastreável
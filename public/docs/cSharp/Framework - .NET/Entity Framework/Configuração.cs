// Biblioteca para gerenciamento de banco de dados na aplicação
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Sqlite; // Para banco SqlLite
using Microsoft.EntityFrameworkCore.SqlServer; // Para banco SQL Server

// Classe do contexto do banco de dados deve herdar de DbContext
public class DbContexto : DbContext { }

// Configurações
protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder) { }
optionsBuilder.UseSqlite("Data Source=MeuAplicativo.db"); // Configurar p/ usar SqlLite
optionsBuilder.UseSqlServer("Server=(local);Database=study_dot_net;Trusted_Connection=True;");  // Configurar p/ usar SQL Server

// Definindo uma tabela que será gerada no migrations a partir de uma classe
// Campos 'Id' parece que vão receber um identity automaticamente
public DbSet<Entidade> Entidades { get; set; }

// Sobrescrevendo método para definir chaves compostas de tabelas
protected override void OnModelCreating(ModelBuilder modelBuilder)
{
  modelBuilder.Entity<Tabela>().HasKey(tabela => new
  {
    tabela.Id1, // Cada campo que compõe a chave composta
    tabela.Id2
  });
}

// Acessar uma tabela dinâmicamente
DbSet<T> tabela = _contexto.Set<T>();

// Manipulando dados pelo contexto
_contexto.Add(Item); // Adicionar um item para sua tabela
_contexto.Update(Item); // Atualizar um item
_contexto.Remove(Item); // Deletar um item
_contexto.RemoveRange(Itens); // Deletar uma array de itens
int linhasAfetadas = _contexto.SaveChanges(); // Salvar mudança de um item (Adicionar, Atualizar, Deletar)
int linhasAfetadas = await _contexto.SaveChangesAsync(); // Igual o método acima porém assíncrono

// Rastreamento de entidade
// Define se manterá informações sobre uma instância de entidade em seu rastreador de alterações
// Se uma entidade for rastreada, quaisquer alterações detectadas na entidade serão persistidas no banco de dados durante SaveChanges()
query = query.AsNoTracking(); // Definindo que uma query do LINQ não é rastreável
CContextoBanco.ChangeTracker.QueryTrackingBehavior = QueryTrackingBehavior.NoTracking; // Defindo que nenhuma query do contexto será rastreável
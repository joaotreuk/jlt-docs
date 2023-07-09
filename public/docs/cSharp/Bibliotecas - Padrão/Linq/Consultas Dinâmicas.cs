using System.Linq.Dynamic.Core;

// Where dinâmico
query = query.Where("Id == @0", id);
query = query.Where("tabelaA.Id = @0 and tabelaB.Count >= @1", "London", 10); // Filtro em multiplas tabelas
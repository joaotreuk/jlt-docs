using System.Linq;

// Inicializando elementos de consulta
IQueryable<DbSourceAlunos> query = sourceAlunos; // Convertendo um elemento de modelo de fonte de dados

// Faz uma seleção de uma propriedade do objeto
IQueryable<T> query = query.Select(aluno => aluno.Nome); // Usando controle de query a partir de uma fonte de dados

// Faz uma ligação da classe principal com outra classe a fim de adiciona-lá a consulta
IQueryable<T> query = query.Include(aluno => aluno.Materias);
IQueryable<T> query = query.Include(aluno => aluno.ProfessoresAlunos).ThenInclude(pa => pa.Professores); // Incluíndo uma classe a consulta a partir da classe de "meio de campo"

// Ordenar a consulta
IQueryable<T> query = query.OrderBy(aluno => aluno.Nome);
IQueryable<T> query = query.OrderByDescending(aluno => aluno.Aniversario); // Ordenar de forma decrescente

// Condições
IQueryable<T> query = query.Where(aluno => aluno.Nome == "João"); // Aplica uma condição para a consulta

// Executando a consulta
DbSourceAlunos[] alunos = query.ToArray(); // Executa a consulta e transforma os resultados em uma array
DbSourceAlunos[] alunos = await query.ToArrayAsync(); // Igual o método acima porém assíncrono
List<DbSourceAlunos> alunos = query.ToList<ModeloAlunos>(); // Executa a consulta e transforma os resultados em uma lista
DbSourceAlunos alunos = query.FirstOrDefault(); // Executa a consulta e obtém o primeiro resultado trazido ou o valor padrão
DbSourceAlunos alunos = query.FirstOrDefault(aluno => aluno.Id == 1); // Passando uma condição
DbSourceAlunos alunos = await query.FirstOrDefaultAsync(); // Igual o método acima porém assíncrono
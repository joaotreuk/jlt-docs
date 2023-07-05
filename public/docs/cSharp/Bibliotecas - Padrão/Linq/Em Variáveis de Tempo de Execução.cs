using System.Linq;

// Inicializando elementos de consulta
IEnumerable<T> query = matriz; // Arrays são automaticamente convertidas para consultas, podendo assim usar seus métodos

/*-------------------- MÉTODOS --------------------*/
/// <summary>Obtém todos os itens de uma matriz que não estejam em uma segunda matriz</summary>
/// <param name="second">Array cujos itens seram comparados com os itens da primeira array</param>
/// <returns>Novo IEnumerable gerado com a condição</returns>
IEnumerable<int> matriz = matriz.Except(second);

// Consulta em strings
char letra = texto.First(); // Obtém a primeira letra do texto

/// <summary>Obtém o primeiro resultado trazido ou o valor padrão</summary>
ModeloAlunos sourceAlunos = query.FirstOrDefault();
ModeloAlunos sourceAlunos = query.FirstOrDefault(aluno => aluno.Id == 1); // Passando uma condição

/// <summary>Obtem o último item da lista</summary>
int item = matriz.Last();

/// <summary>Obtem o maior valor de uma lista</summary>
/// <returns>O maior valor</returns>
int maiorValor = matriz.Max();

// Criar um Enumerable com uma lista de números
IEnumerable<int> matriz = Enumerable.Range(numero_inicial, qtd_itens);

/// <summary>Faz uma seleção de uma propriedade do objeto</summary>
IEnumerable<string> nomes = matriz.Select(aluno => aluno.Nome);

/// <summary>Converte a query em uma array</summary>
ModeloAlunos[] alunos = query.ToArray();

/// <summary>Converte a query para um List</summary>
List<ModeloAlunos> alunos = query.ToList<ModeloAlunos>();

/// <summary>Seleciona apenas os itens de uma lista que cumpram uma condição</summary>
IEnumerable<T> query = matriz.Where(item => item.Id == 2);
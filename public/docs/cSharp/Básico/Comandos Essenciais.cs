// Escreve um texto no console
Console.Write("Hello World!");
Console.WriteLine("Hello World!"); // Escreve o texto em uma nova linha

// Importação
using App.MinhaBiblioteca;
using Apelido = App.MinhaBiblioteca.NomeClasse; // Definindo um apelido para a classe importada, útil quando a mais de uma classe com o mesmo nome

// Variáveis
public readonly int Variavel = 1; // Variável de apenas leitura
Nullable<int> nulo = null; // Variável que permite valores nulos
int? nulo = null; // Abreviação da variável acima
var a = valor; // Variável com o tipo implícito, é útil para evitar adicionar 'using' para referênciar um tipo de uma biblioteca

// Switch simplificado
int Variavel = Valor switch
{
    0 => "A",
    1 => "B",
    _ => "C" // _ representa o default
};

// Útil
1 == 1 ? "Verdade" : "Mentira"; // If de uma linha

// Se uma variável estiver nula retorna uma outra variável do mesmo tipo
string texto = texto1 ?? texto2;

// Foreach de uma linha
foreach (int ID in IDs) Lista.Add(ID); 

// Try Catch
try { }
catch (Exception e) 
{ 
    // Transforma a exceção em um padrão aceitável para o Javascript
    new JavaScriptSerializer().Serialize(e.Message.ToString());
}
finally { } // Finally passa tanto pelo try quanto pelo catch

// Exceções
throw; // Chama novamente a exceção que aconteceu em um catch do try catch
throw new IndexOutOfRangeException(); // Chama uma nova exceção
throw new ArgumentException("Minha mensagem"); // Chama uma nova exceção definindo a mensagem de erro
// Exceção de parâmetro nulo, passando o nome do parâmetro que não pode ser nulo
throw new ArgumentNullException(nameof(entidade), "A entidade não pode ser nula.");

// Obter o nome de uma variável
// Útil quando você quer rastrear qual o nome da variável que está com inconsistencias
string nome = nameof(entidade); // Retorna 'entidade'

// Região, bloco para separar códigos
#region Bloco que faz alguma coisa
#endregion

// Blocos de comentários mais grandes para descrever um processo
/// <summary>
/// Comentários vão aqui em várias linhas
/// </summary>
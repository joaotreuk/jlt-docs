// Declaração / Atribuição
Exception excecao = new();
Exception excecao = new ArgumentException("Minha mensagem"); // Com msg de erro
Exception excecao = new NotImplementedException(); // Não foi implementado

// Throw exceção
throw; // Chama novamente a exceção que aconteceu em um catch do try catch
throw excecao;
throw new IndexOutOfRangeException(); // Chama uma nova exceção
// Exceção de parâmetro nulo, passando o nome do parâmetro que não pode ser nulo
throw new ArgumentNullException(nameof(entidade), "A entidade não pode ser nula.");


/*-------------------- PROPRIEDADES --------------------*/

string msg = excecao.Message;
string texto = excecao.Source;
string stackTrace = excecao.StackTrace;
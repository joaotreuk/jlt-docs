// Declaração / Atribuição
string texto = "Hello World!";
string texto = "{0} - {1}", variavel, variavel2; // Abreviação do método string.Format

// Escapar um caracter especial
string texto = "\"";

// String verbatim
// Escapes não funcionam nesse tipo de string, facilitando caso for usar muitos escapes
string caminho = @"c:\mypath\to\myfile.txt"; // Exemplo: "c:\\mypath\\to\\myfile.txt"
// Não precisam de junção quando realizado uma quebra de linha
string query = @"SELECT ID, Nome
	FROM Tabela";

// String interpolada
string query = $"SELECT * FROM Tabela WHERE ID = {Variavel} AND Nome = {Variavel2}";
string texto = $@" SELECT * FROM Tabela WHERE ID = {ID}"; // String interpolada + verbatim

// Propriedades
string textoVazio = string.Empty; // Equivalente a uma string vazia
int tamanho = texto.Length;


/*-------------------- MÉTODOS --------------------*/

// Formatar um texto
string formatado = string.Format("{0:0,0.000}", numero); // Formatar um número, definindo se usa , ou . e o número de casas depois da vírgula
string formatado = string.Format("{0:d/M/yyyy HH:mm:ss}", minhaData); // Formatar um campo de data
string texto = string.Format("{0} - {1}", variavel, variavel2); // Concatenando variáveis em uma string

// Obter o índice da primeira aparição de um caracter na string
int indice = texto.IndexOf('.');

// Retornar a ordem de um string em relação a outra, está que pode ser usada como condição para um método de ordenação
int ordem = texto.CompareTo(texto2);

// Obter uma parte a string a partir de um índice inicial
string texto = texto.Substring(1);

// Transformação
string texto = texto.Insert(4, "-"); // Inserir uma string em outra a partir de um índice específicado, retornando a string modificada
string texto = texto.Replace(",", "."); // Substituir uma parte da string por outra string
string texto = texto.ToLower(); // Transformar todos os caracteres do texto em letras minúsculas
string texto = texto.ToUpper(); // Transformar todos os caracteres do texto em letras maiúsculas
string texto = texto.Trim(); // Remover os espaços antes e depois da string

// Validação
bool contem = texto.Contains("Joã"); // Verificar se uma string contém uma sub string
bool vazio = string.IsNullOrEmpty(texto); // Verificar se uma string é nula ou vazia
bool vazio = string.IsNullOrWhiteSpace(a); // Igual o anterior, porém também retorna true se todos os caracteres forém espaços em branco

// Quebrar uma string em uma lista, usando um caracter separador
string[] lista = texto.Split('.');
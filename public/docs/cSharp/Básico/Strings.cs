/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/

// Atribuição básica
string texto = "Hello World!";

// String verbatim, uma string em que escapes não funcionam
// Para deixar a mesma mais limpa para quando se precisa usar os caracters de escape
string caminho = @"c:\mypath\to\myfile.txt"; // Exemplo: "c:\\mypath\\to\\myfile.txt"
// Strings verbatim não precisam de junção quando realizado uma quebra de linha
string query = @"
	SELECT ID, Nome
	FROM Tabela";

// String interpolada
string query = $"SELECT * FROM Tabela WHERE ID = {Variavel} AND Nome = {Variavel2}";
string texto = $@" SELECT * FROM Tabela WHERE ID = {ID}"; // String interpolada + verbatim

// Usar dois tipos de aspas em uma string
string texto = "\"";

// Equivalente a uma string vazia
string textoVazio = string.Empty;

/*-------------------- MÉTODOS --------------------*/

// Verifica se uma string contém uma sub string
bool contem = texto.Contains("Joã");

// Retorna a ordem de um string em relação a outra, está que pode ser usada como condição para um método de ordenação
int ordem = texto.CompareTo(texto2);

// Formatando um texto
string formatado = string.Format("{0:d/M/yyyy HH:mm:ss}", minhaData); // Formatando um campo de data
string texto = string.Format("{0} - {1}", variavel, variavel2); // Concatenando variáveis em uma string
string texto = "{0} - {1}", variavel, variavel2; // É possível fazer a regra acima sem o método

// Obtem o índice da primeira aparição de um caracter na string
int indice = texto.IndexOf('.');

// Insere uma string em um índice específicado, retornando a string modificada
string texto = texto.Insert(4, "-");

// Substituí um texto por outro
string texto = texto.Replace(",", ".");

// Igual o decima porém Regex
string texto = Regex.Replace("meu texto", "meu", ""); // @"\r\n?|\n" to remove break lines on string

// Quebra uma string em uma lista, usando um caracter separador
string[] lista = texto.Split('.');

// Obtém a string a partir de um índice inicial
string texto = texto.Substring(1);

// Transforma todos os caracteres do texto em letras minúsculas
string texto = texto.ToLower();

// Transforma todos os caracteres do texto em letras maiúsculas
string texto = texto.ToUpper();

// Remove os espaços antes e depois da string
string texto = texto.Trim();
using System.IO;

// Combinar dois caminhos
string novoCaminho = Path.Combine("Pasta", "SubPasta");

// Obter o diretório atual, onde a aplicação está
string diretorioAplicacao = Directory.GetCurrentDirectory();

// Buscar caminho pelo padrão do windows
string caminho = @"C:\Users\Usuario\Desktop\MyTest.txt";

// Buscar caminho pelo mapeamento do servidor
string caminho2 = Server.MapPath("~/Scripts/Arquivo.html");
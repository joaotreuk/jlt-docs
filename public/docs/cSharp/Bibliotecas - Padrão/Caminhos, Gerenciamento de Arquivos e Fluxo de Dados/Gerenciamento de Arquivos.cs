using System.IO;

// Iniciando uma stream para criação de um novo arquivo
using(FileStream stream = new FileStream(
    "C:Pasta/Arquivo.txt", // Caminho + nome do arquivo
    FileMode.Create // Tipo de operação do stream, para criação por exemplo
)){}

// Cria um arquivo
using (StreamWriter sw = System.IO.File.AppendText(caminho))
{
    sw.Write("This"); // Escreve o conteudo
    sw.WriteLine("Exemplo"); // Escreve o conteudo e adiciona uma nova linha
}

// Lê um arquivo
using (StreamReader sr = System.IO.File.OpenText(caminho))
{
    string s = "";
    while ((s = sr.ReadLine()) != null)
    {
        Console.WriteLine(s);
    }
}

// Deleta um arquivo
File.Delete(caminho);
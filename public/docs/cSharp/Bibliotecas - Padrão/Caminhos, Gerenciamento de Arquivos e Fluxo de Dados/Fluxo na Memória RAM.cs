using System.IO;

// Cria um fluxo na memória RAM
MemoryStream memoryStream = new MemoryStream();

// Métodos
memoryStream.Close(); // Encerra o fluxo na memória, liberando todos os recursos de hardware (soquetes, identificadores de arquivo) associados a ele
byte[] bytes = memoryStream.ToArray(); // Converte o fluxo para uma array de bytes
// Tipo de variável, arquivo de texto (.txt)
TextFile

// Atribui um caminho para um elemento de arquivo de texto
AssignFile(
    arquivoTexto, // Elemento
    caminho // Caminho
);

// Sobrescreve um arquivo no caminho atribuido ao mesmo
ReWrite(arquivoTexto);

// Abre um arquivo existente para escrever novo conteúdo sem apagar o conteúdo já existente
Append(arquivoTexto);

// Escreve um texto no arquivo em uma nova linha
WriteLn(arquivoTexto, 'Exemplo');

// Fecha o arquivo ao terminar de usar o mesmo
CloseFile(arquivoTexto);

// Re-abre um arquivo que foi fechado
Reset(arquivoTexto);

// Verfica se está na última linha do arquivo
Eof(arquivoTexto);

// Lê a linha atualmente selecionada e avança para a próxima
ReadLn(
    arquivoTexto, // arquivo sendo lido
    texto // Variável em que é escrito o texto da linha atual
);
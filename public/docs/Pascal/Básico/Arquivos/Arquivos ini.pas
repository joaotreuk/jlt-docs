// Tipo de variável
TIniFile

// Cria um arquivo .ini para uma variável
arquivoIni := TIniFile.Create('C:\Delphi\MeuAplicativo.ini');

// Ler dados de um arquivo .ini
ReadString(
    'SESSAO',
    'Entrada',
    'Não encontrado' // Valor padrão para o caso de não ter encontrado um valor para esta entrada
);

// Escreve dados em um arquivo .ini
WriteString('SESSAO', 'Entrada', 'Valor');

// Liberá a variável de um arquivo .ini da memória
arquivoIni.Free;
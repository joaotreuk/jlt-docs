uses SysUtils

// Substituir uma parte de uma String
StringReplace(
    'Texto///', // String para fazer a substituição
    '/', // Parte a ser removida
    '', // Parte a substituir
    [rfReplaceAll] // Se substitui todas ocorrências ou não
);

// Formata uma data de um datetime
FormatDateTime('dd/mm/yyyy', data)

// Converte uma variável para String
numero.ToString();

// Verifica se um arquivo existe
FileExists(caminhoArquivo);

// Deleta um arquivo
DeleteFile(caminhoArquivo);

// Muda o nome da extenção de uma String com o caminho de um arquivo
novaExtencao := ChangeFileExt(
    'C:\Delphi\MeuAplicativo.exe', // String com um caminho de arquivo
    '.ini' // Nova extenção
);

// Obter o caminho de uma pasta do sistema
GetEnvironmentVariable(
    'TEMP' // Nome da variável da pasta
    {
        'TEMP' -> Pasta de arquivos temporários
        'HOMEPATH' -> Pasta do usuário atual, através dessa pasta pode acessar \Documents, \Downloads
    }
);

// Retorna um elemento DateTime com o tempo atual
Time;
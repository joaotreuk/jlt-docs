// Strings
meuTexto: String; // Declaração
meuTexto := 'Exemplo'; // Atribuição

{ -------------------- VARIÁVEIS -------------------- }

// String vazia
EmptyStr;

{ -------------------- MÉTODOS -------------------- }

{ ----- TRANSFORMAÃ‡ÃƒO ----- }
// Deixa todos os caracteres da string em letras minúsculas
LowerCase('Texto');

// Adiciona uma aspas simples no inÃ­cio e fim da String passada
texto := QuotedStr(S);

// Deixa todos os caracteres da string em letras maiúsculas
UpperCase('Texto');

// Converte uma String para Interger
inteiro := StrToInt('1234');

{ ----- OUTROS ----- }
// Retorna o número de caracteres da string
inteiro := Length('Texto');

// Copia parte da string, no exemplo abaixo retorna "ext"
// Param texto: String a ser copiada
// Param indice: Número do caracter inicial a ser copiado, começa em 1
// Param quantidade: Quantidade de caracteres a serem copiados
subTexto := Copy(texto, indice, quantidade);
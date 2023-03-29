// Strings
meuTexto: String; // Declara��o
meuTexto := 'Exemplo'; // Atribui��o

{ -------------------- VARI�VEIS -------------------- }

// String vazia
EmptyStr;

{ -------------------- M�TODOS -------------------- }

{ ----- TRANSFORMAÇÃO ----- }
// Deixa todos os caracteres da string em letras min�sculas
LowerCase('Texto');

// Adiciona uma aspas simples no início e fim da String passada
texto := QuotedStr(S);

// Deixa todos os caracteres da string em letras mai�sculas
UpperCase('Texto');

// Converte uma String para Interger
inteiro := StrToInt('1234');

{ ----- OUTROS ----- }
// Retorna o n�mero de caracteres da string
inteiro := Length('Texto');

// Copia parte da string, no exemplo abaixo retorna "ext"
// Param texto: String a ser copiada
// Param indice: N�mero do caracter inicial a ser copiado, come�a em 1
// Param quantidade: Quantidade de caracteres a serem copiados
subTexto := Copy(texto, indice, quantidade);
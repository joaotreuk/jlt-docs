// Ponteiros s�o tipos de vari�veis que representam um endere�o de mem�ria RAM
// Ponteiros s�o �teis para quando se quer alterar m�ltiplas vari�veis ao mesmo tempo (setando ambas para o mesmo endere�o)
var p: Pointer;

// Declarando vari�veis com acessibilidade a seus ponteiros
type PString = ^String;
var textoComPonteiro: ^String;

// Ponteiros predefinidos
letra: PChar; // Para o tipo Char
letra: PChar('texto'); // Atribuindo um ponteiro char com uma string
inteiros: PIntegerArray; // Para o tipo IntegerArray

{ -------------------- ATRIBUI��O -------------------- }
// Ponteiros
p := nil; // Atribui��o nula
p := @minhaVariavel; // Atribu� o endere�o de uma vari�vel para o ponteiro
p := Addr(minhaVariavel); // Igual a funcionalidade acima

// Vari�veis com acessibilidade a ponteiros
// Deve-se setar o valor do ponteiro antes de setar o valor da vari�vel
// Se replicar o ponteiro de outra vari�vel o endere�o de ambas ser� o mesmo, ou seja se mudar o valor de uma vari�vel muda o d� outra tamb�m
textoComPonteiro := @minhaVariavel;
// Acessando o ponteiro da vari�vel
p: Pointer = textoComPonteiro;
// Atribuindo o valor da vari�vel
textoComPonteiro^ := 'Texto';

{ -------------------- M�TODOS -------------------- }
// Obtendo o n�mero do endere�o de uma vari�vel, se o endere�o for nulo retorna 0
endereco: Word = Addr(minhaVariavel);

// Setar um valor para uma regi�o de mem�ria apontada por uma vari�vel de ponteiro
FillChar(textoComPonteiro^, 80, 'J'); // Setando um valor Char
FillChar(textoComPonteiro^, 80, 1); // Setando um valor Byte
FillChar(textoComPonteiro^, 80, True); // Setando um valor Boolean

// Liberar uma mem�ria alocada para uma vari�vel de ponteiro
FreeMem(textoComPonteiro, 80); // 80 seria o espa�o em bytes reservados da mem�ria
tamanho := FreeMem(textoComPonteiro);

// Reservar um espa�o em bytes de mem�ria para uma vari�vel de ponteiro
// Se reservar mem�ria desta forma deve-se posteriormente chamar o FreeMem para limpar a reserva de mem�ria
// Se o valor setado para ReturnNilIfGrowHeapFails for True ser� retornado nulo caso n�o haja mais espa�o em mem�ria, do contr�rio um erro ser� gerado, padr�o: False
GetMem(textoComPonteiro, 80); // 80 seria o espa�o em bytes reservados da mem�ria
textoComPonteiro := GetMem(80); // Retornar um ponteiro setado para um espa�o reservado
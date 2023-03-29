// Ponteiros são tipos de variáveis que representam um endereço de memória RAM
// Ponteiros são úteis para quando se quer alterar múltiplas variáveis ao mesmo tempo (setando ambas para o mesmo endereço)
var p: Pointer;

// Declarando variáveis com acessibilidade a seus ponteiros
type PString = ^String;
var textoComPonteiro: ^String;

// Ponteiros predefinidos
letra: PChar; // Para o tipo Char
letra: PChar('texto'); // Atribuindo um ponteiro char com uma string
inteiros: PIntegerArray; // Para o tipo IntegerArray

{ -------------------- ATRIBUIÇÃO -------------------- }
// Ponteiros
p := nil; // Atribuição nula
p := @minhaVariavel; // Atribuí o endereço de uma variável para o ponteiro
p := Addr(minhaVariavel); // Igual a funcionalidade acima

// Variáveis com acessibilidade a ponteiros
// Deve-se setar o valor do ponteiro antes de setar o valor da variável
// Se replicar o ponteiro de outra variável o endereço de ambas será o mesmo, ou seja se mudar o valor de uma variável muda o dá outra também
textoComPonteiro := @minhaVariavel;
// Acessando o ponteiro da variável
p: Pointer = textoComPonteiro;
// Atribuindo o valor da variável
textoComPonteiro^ := 'Texto';

{ -------------------- MÉTODOS -------------------- }
// Obtendo o número do endereço de uma variável, se o endereço for nulo retorna 0
endereco: Word = Addr(minhaVariavel);

// Setar um valor para uma região de memória apontada por uma variável de ponteiro
FillChar(textoComPonteiro^, 80, 'J'); // Setando um valor Char
FillChar(textoComPonteiro^, 80, 1); // Setando um valor Byte
FillChar(textoComPonteiro^, 80, True); // Setando um valor Boolean

// Liberar uma memória alocada para uma variável de ponteiro
FreeMem(textoComPonteiro, 80); // 80 seria o espaço em bytes reservados da memória
tamanho := FreeMem(textoComPonteiro);

// Reservar um espaço em bytes de memória para uma variável de ponteiro
// Se reservar memória desta forma deve-se posteriormente chamar o FreeMem para limpar a reserva de memória
// Se o valor setado para ReturnNilIfGrowHeapFails for True será retornado nulo caso não haja mais espaço em memória, do contrário um erro será gerado, padrão: False
GetMem(textoComPonteiro, 80); // 80 seria o espaço em bytes reservados da memória
textoComPonteiro := GetMem(80); // Retornar um ponteiro setado para um espaço reservado
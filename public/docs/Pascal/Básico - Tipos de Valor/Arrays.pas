// Arrays
lista: Array of String; // Lista de tamanho 0
lista: Array [0..4] of Integer; // Lista de tamanho 5
lista: IntegerArray; // Lista gen�rica de inteiros, tem tamanho m�ximo

// Atribui��o
lista[0] := texto; // Defindo o valor de um item da array

{ -------------------- M�TODOS -------------------- }

// Retorna o n�mero de itens em uma lista
inteiro := Length(lista);

// Obt�m uma String de uma lista de Strings pelo identificador da posi��o da mesma
listaStrings.Strings[0];

// Altera o tamanho de uma lista, ou seja o n�mero de itens suportados
SetLength(
  lista, 
  5 // Novo tamanho
);

// Separar uma string em uma lista
Var
  lista: array of string;
  listaSoma, textoTamanho, indiceInicial: DWORD;
  textoTemp, textoParaSeparar, delimitador: string;
Begin
    delimitador := '|';
    textoParaSeparar := 'Teste|Teste|Teste|'; // Precisa ter um delimitador no final

    textoTamanho := Length(textoParaSeparar);
    indiceInicial := 1;
    listaSoma := 0;
    repeat
      textoTemp := Copy(textoParaSeparar, indiceInicial, Pos(delimitador, Copy(textoParaSeparar, indiceInicial, Length(textoParaSeparar))) - 1);
      SetLength(lista, Length(lista) + 1);
      SetLength(lista[listaSoma], Length(textoTemp));
      lista[listaSoma] := textoTemp;
      indiceInicial := indiceInicial + Length(textoTemp) + Length(delimitador);
      listaSoma := listaSoma + 1;
    until indiceInicial > textoTamanho;

    // Usando a nova array
    lista[0]
End;

// Fun��o que verifica se um item est� na lista
function TFormulario.EstaNaLista(const valor: String; const lista: Array of String): Boolean;
var
  item : String;
begin
  for item in lista do if valor = item then Exit(true);
  Result := false;
end;
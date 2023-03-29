// Arrays
lista: Array of String; // Lista de tamanho 0
lista: Array [0..4] of Integer; // Lista de tamanho 5
lista: IntegerArray; // Lista genérica de inteiros, tem tamanho máximo

// Atribuição
lista[0] := texto; // Defindo o valor de um item da array

{ -------------------- MÉTODOS -------------------- }

// Retorna o número de itens em uma lista
inteiro := Length(lista);

// Obtém uma String de uma lista de Strings pelo identificador da posição da mesma
listaStrings.Strings[0];

// Altera o tamanho de uma lista, ou seja o número de itens suportados
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

// Função que verifica se um item está na lista
function TFormulario.EstaNaLista(const valor: String; const lista: Array of String): Boolean;
var
  item : String;
begin
  for item in lista do if valor = item then Exit(true);
  Result := false;
end;
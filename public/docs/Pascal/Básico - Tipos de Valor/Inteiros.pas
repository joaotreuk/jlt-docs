// Inteiros
var inteiro: Integer;
var inteiro: Word;

// Atribuição
inteiro := 1;

{ -------------------- MÉTODOS -------------------- }

// Decrementar o valor
Dec(inteiro); // Decrementar o valor em 1
Dec(inteiro, 2); // Decrementar o valor em um outro valor passado

// Incrementar o valor
Inc(inteiro); // Incrementar o valor em 1
Inc(inteiro, -3); // Incrementar o valor em um outro valor passado

// Converter inteiro para hexadecimal
IntToHex(1234, 1); // Display 123 decimal in hex with minimal width
IntToHex(1234, 8); // Display 123 decimal in hex with fixed width

// Converte um Integer para uma String
texto := IntToStr(1234);
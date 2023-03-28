let texto: string;

// Métodos
texto = texto.toLocaleLowerCase(); // Transforma todos os caracteres do texto em letras mínusculas
texto = texto.toLocaleUpperCase(); // Transforma todos os caracteres do texto em letras maíusculas
let indice: number = texto.indexOf("Joã"); // Retorna o índice da primeira ocorrêcia de um sub texto passado, retorna -1 se não for encontrado nada
let lista = texto.split(',', 3); // Separa um string para uma lista usando um caractere, segundo parâmetro é o limite máximo de itens a serem separados
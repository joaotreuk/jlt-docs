/*-------------------- PROPRIEDADES --------------------*/
tamanho = texto.length; // Número de caracteres no texto, apenas leitura

/*-------------------- MÉTODOS --------------------*/
// Retorna a primerira posição que aparece um determinado caracter, se não tiver este caracter então retorna -1
indice = texto.indexOf(";");
indice = texto.indexOf(";", 5); // Indica apartir de qual char começa a procurar

// Substituir caracteres
texto = texto.replace('Teste', ''); // Substitui uma vez
texto = texto.replace(/texto/g, '.'); // Substitui todas as vezes em que um texto aparece
texto = texto.replace(/["'@@]/g, ""); // Substitui vários caracteres, aqueles que estão dentro de []
texto = texto.replace(/\D/g, ''); // Remove tudo que não for número, incluindo , e .
texto = texto.replace(/\./g, ''); // O ponto precisa ser escapado

// Separa uma string por um determinado caracter em uma array
matriz = mtexto.split(",");

// Retorna um pedaço da string
// substring(caracter inícial, caracter final + 1)
texto = "Hello World!".substring(0, 5); // Retorna "Hello"

// Transformação de texto
texto = texto.toLowerCase(); // Deixa todos os caracteres de uma string em letras minúsculas
texto = texto.toUpperCase(); // Deixa todos os caracteres de uma string em letras maiúsculas

// Convert uma váriavel para string
texto = variavel.toString();

// Remover espaços
texto = texto.trim(); // Remove os espaços no começo e no fim do texto
texto = texto.trimEnd(); // Remove espaços apenas no fim do texto
texto = texto.trimStart(); // Remove espaços apenas no começo do texto

/*-------------------- ÚTIL --------------------*/
// Caracter para definir uma quebra de linha
quebraLinha = "\n";

// Interpolação, strings interpoladas podem ser usados para quebrar um texto por diversas linhas
console.log(`texto string linha ${a}
texto string linha ${1 + 1}`) // Adicionando variáveis e valores a string

Tag`texto string linha ${a}
texto string linha ${1 + 1}` // Chama a função tag para a string interpolada

function Tag(Textos, Valor, Valor2) {
    console.log(Textos[0]) // Array com cada texto separado da string
    console.log(Valor, Valor2) // Valores da string que foram adicionados com ${}
    console.log(Textos.raw[0]) // Texto cru da string
}

 // Escreve o texto cru de uma string, exemplo: "Hi\\n5!"
console.log(String.raw`Hi\n${2 + 3}!`)

// Função de capitalizar
String.prototype.capitalize = function() {
  return this.charAt(0).toUpperCase() + this.slice(1)
}
// Converção
let numero = parseInt('10'); // Converte um variável para um número inteiro
numero = parseInt('10', 16); // Define a base númerica, ex: 16 indica que o valor passado é um hexadecimal e deve ser convertido para um inteiro decimal
numero.toFixed(2); // Define a quantidade de números depois da virgula que a váriavel tera
valor.toLocaleString('pt-BR'); // Converte um número para um padrão BR, exemplo: 1000000.00 para 1.000.000,00
valor.toLocaleString(undefined, {
    minimumFractionDigits: 2, // Número minimo de casas após a virgula
    maximumFractionDigits: 3, // Número máximo de casas após a virgula
    style: 'currency', // Tipo de valor, currency adiciona um pré-fixo antes do valor relacionado a moeda, ex: $
    currency: 'BRL' // Tipo de pré-fixo de moeda, 'BRL' = R$
});

// Útil
NaN // Objeto de um número que não é um número
Infinity // Variável de número infinito
let numeroFinito = Number.isFinite(numero); // Verifica se valor é um número finito ou não
let numeroInteiro = Number.isInteger(Numero); // Verifica se o valor é um número inteiro ou não
let ehNan = Number.isNaN(numero); // Verifica se valor é NaN (Not-A-Number) ou não

/*-------------------- MATEMÁTICA --------------------*/

// Propriedades
let raizDois = Math.SQRT2; // Raiz quadrada do 2

// Métodos
Math.abs(-7.25); // Retorna o valor absoluto de um número, no exemplo retorna 7.25 de -7.25
Math.floor(1.6); // Arredonda para baixo um número, no exemplo arredonda 1.6 para 1
let hipotenusa = Math.hypot(3, 4/*, ...*/); // Calcular a hipotenusa de um número x de ângulos passados
Math.pow(4, 3); // Retorna a exponenciação de um número, exemplo: 4³ = 64
Math.round(4.7); // Arredonda um número para o inteiro mais próximo, no exemplo: arredonda 4.7 para 5
let raiz = Math.sqrt(9); // Retorna a raiz quadrada de um número
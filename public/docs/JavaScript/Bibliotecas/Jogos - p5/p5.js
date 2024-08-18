// Biblioteca em que se pode criar artes e jogos
// Ele vai automaticamente executar os métodos de evento
//<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.5.0/p5.js"></script>

/*-------------------- EVENTOS --------------------*/

// Pré-load, executado antes do setup, onde pode-se fazer o carregamento de arquivos de som, imagem, etc.
function preload() { }

// Setup, executado ao iniciar, onde pode-se criar o canvas, etc.
function setup() { }

// Executado sempre que a tela é desenhada, qualquer mudança que aconteça no desenho
function draw() { }

/*-------------------- MÉTODOS --------------------*/

// Criar o canvas, passando a largura e altura
createCanvas(600, 400);

// Carregar imagem para variável
let bg = loadImage('elden.jpeg');
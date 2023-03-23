FileSystem = require('fs');

//Funcao para criar um arquivo
FileSystem.appendFile('ArquivoCriado.txt', 'Hello content!', function (Erro) {
    if (Erro) throw Erro; //Retorna erro
    console.log('Arquivo salvo!');
});

//If the flag is "w" for "writing", the specified file is opened for writing. If the file does not exist, an empty file is created:
FileSystem.open('ArquivoCriado2.txt', 'w', function (Erro, Arquivo) {
    if (Erro) throw Erro;
    console.log('Saved!');
  });

// Write File
FileSystem.writeFile('ArquivoCriado3.txt', 'Hello content!', function (Erro) {
    if (Erro) throw Erro;
    console.log('Arquivo Salvo!');
});
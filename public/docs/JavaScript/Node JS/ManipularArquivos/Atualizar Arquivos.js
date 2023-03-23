FileSystem = require('fs');

// Adicionar dados
FileSystem.appendFile('Arquivo.txt', ' This is my text.', function (Erro) {
  if (Erro) throw Erro;
  console.log('Atualizado!');
});

// Sobrescrever dados
FileSystem.writeFile('Arquivo2.txt', 'This is my text', function (Erro) {
  if (Erro) throw Erro;
  console.log('Sobrescrevido!');
});
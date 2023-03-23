FileSystem = require('fs');

FileSystem.rename('NomeAntigo.txt', 'NovoNome.txt', function (Erro) {
  if (Erro) throw Erro;
  console.log('Arquivo renomeado!');
});
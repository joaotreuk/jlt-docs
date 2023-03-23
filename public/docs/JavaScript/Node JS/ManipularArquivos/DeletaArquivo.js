FileSystem = require('fs');

FileSystem.unlink('Arquivo.txt', function (Erro) {
  if (Erro) throw Erro;
  console.log('Arquivo Excluido!');
});
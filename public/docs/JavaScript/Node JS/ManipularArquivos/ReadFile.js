Http = require('http');
FileSystem = require('fs');

Http.createServer(function (Requisicao, Resposta) {
  	FileSystem.readFile('DemoFile.html', function(err, Dados) {
    	Resposta.writeHead(200, {'Content-Type': 'text/html'});
    	Resposta.write(Dados); //Escreve o conteudo do arquivo
    	Resposta.end();
  	});
}).listen(8080);
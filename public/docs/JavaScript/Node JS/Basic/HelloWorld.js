Http = require('http');

Http.createServer(function (Requisicao, Resposta) {
  Resposta.writeHead(200, {'Content-Type': 'text/html'});
  Resposta.end('Hello World!');
}).listen(8080); 
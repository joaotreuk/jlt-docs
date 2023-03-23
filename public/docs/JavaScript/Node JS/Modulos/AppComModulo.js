Http = require('http'); 
Modulo = require('./myfirstmodule'); //Incluir modulo

//create a server object:
Http.createServer(function (Requisicao, Resposta) {
	Resposta.writeHead(200, {'Content-Type': 'text/html'});
  	Resposta.write("A data atual eh: " + Modulo.DataAtual()); //write a response to the client
  	Resposta.end(); //end the response
}).listen(8080); //the server object listens on port 8080
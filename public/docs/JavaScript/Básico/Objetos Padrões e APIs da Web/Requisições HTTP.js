fetch('/aluno/obterNome', {
	method: 'POST',
	headers: {
		'Accept': 'application/json',
		'Content-Type': 'application/json'
	},
	body: JSON.stringify({ Aluno: aluno })
}).then(resposta => {
	let contentType = resposta.headers.get("content-type");
	if (contentType && contentType.indexOf("application/json") !== -1) {
		return resposta.json().then(retorno => {
			console.log(retorno)
		});
	} else
		alert('Ocorreu um erro interno na aplicação! Contate um administrador!');
	
	// Obter o conteúdo de uma resposta com corpo de texto
	return resposta.text().then(texto => { });
});

// AJAX (Depreciado) -----------------------------------------------------------------------------------------------------------------------------

// Criando um objeto de requisição, é necessário abrir por http
const xhttp = new XMLHttpRequest();

// Evento chamado sempre que o status dp pedido da requisição é alterado
xhttp.onreadystatechange = () => {
	// Status do pedido da requisição
	let pedido = xhttp.readyState;
	/*
		0: O pedido não foi iniciado
		1: O pedido está pronto para iniciar
		2: O pedido foi emitido
		3: O pedido está em processo
		4: O pedido está concluído
	*/

	// Status da requisição, ex: 200 para OK, 404 para NOT FOUND
	let status = xhttp.status;

	if (xhttp.readyState == 4 && xhttp.status == 200) {
		// Retorno da requisição
		let retorno = xhttp.responseText;
	}
}

// Métodos
xhttp.open("GET", "Info.html", true); // Abre uma a requisição (Tipo método, URL, se a requisição é assíncrona ou não)
xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); // Definindo o cabeçalho de uma requisição

// Envia a requisição
xhttp.send();
xhttp.send("parametro=10&parametro2=joao"); // Enviando parâmetros para um requisição POST, para GET os parâmetros são enviados pela URL
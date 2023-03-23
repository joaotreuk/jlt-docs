// Função assíncrona
funcao() async { await algo(); }

// Função assíncrona que retorna um valor no futuro
Future<int> funcao() async { 
  int a = await algo();
  return a;
}

// Recebendo dados no futuro
funcaoFuture().then((dadosDaFuncaoFuture) {}); // O "then" chama uma função após os dados de uma função Future forem recebidos
var a = await funcaoFuture();

// Função que aguarda uma duração
await Future.delayed(
  Duration() // Widget de duração
);

// Define um widget conforme o estado de uma requisição de dados
FutureBuilder(
  future: funcao(), // Função "Future" que retorna dados no futuro
  builder: (contexto, requisicao) {
    switch (requisicao.connectionState) { // Verifica o estado da conexão com a requisicão
      case ConnectionState.none: // Se a conexão ainda não existe
      case ConnectionState.waiting: // Se a conexão está aguardando o resultado
        return (); // Retona um widget, por exemplo um widget de loading
      default:
        if (requisicao.hasError) { // Verifica se ocorreu um erro na requisição
          return (); // Retona um widget, por exemplo um widget de erro
        } else {
          return (); // Retona um widget quando a requisição estiver completa
        }
    }
  }
)

// Widget que acompanha um stream, sempre que o mesmo é atualizado
StreamBuilder<Tipo>( // Pode ser definir um tipo entre <> para o widget
  stream: (), // Stream que pode conter um listener
  builder: (contexto, requisicao) {
    if (requisicao.connectionState == ConnectionState.done) {
      Tipo tipo = requisicao.data; // Dados do stream equivalentes ao tipo passado para o StreamBuilder
      return (); // Retona um widget
    }
  }
)
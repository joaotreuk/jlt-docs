// Encaminha para uma nova página
Navigator.push(
  contexto, // Contexto
  MaterialPageRoute( // Widget que gerá a rota até a nova página
    builder: (contexto) => NovaPagina() // Chamando pelo construtor do Widget
  )
)
// Ou ?
Navigator.of(contexto).push();

// Recebendo dados da nova página ao voltar para a página anterior
final dados = await Navigator.push();

// Retorna para a página anterior, incluí modais
Navigator.pop(
  contexto,
  dados // Dados retornados para a página anterior
);

// Widget que permite controlar o botão de retornar para a página anterior
WillPopScope(
  child: (), // Widget filho
  onWillPop: () { // Função chamada quando o usuário clicar para voltar para página anterior
    return Future.value(false); // Se retornar true volta para a página anterior
  } 
);
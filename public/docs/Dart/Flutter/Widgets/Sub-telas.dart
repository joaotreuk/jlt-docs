// Definindo uma snackbar, barra inferior perguntando se quer desfazer ação ou algo do tipo
final snackbar = SnackBar(
  content: (), // Widget que será a mensagem da snackbar, por exemplo um texto
  duration: Duration(), // Widget de duração
  backgroundColor: Colors.red, // Cor da snackbar
  action: SnackBarAction( // Botão de ação
    label: "Desfazer", // Texto do botão de ação
    onPressed: () {} // Função a ser chamada quando o botão for clicado
  ),
);
Scaffold.of(contexto).removeCurrentSnackBar(); // Remover a snackbar sendo mostrada no momento
Scaffold.of(contexto).showSnackBar(snackbar); // Chamando uma snackbar
_chaveScaffold.currentState.showSnackBar(snackbar); // Chamando uma snackbar usando a chave global de um Scaffold

// Mostra uma modal de diálogo no centro da tela
showDialog(
  context: contexto, // Contexto
  builder: (contexto) {
    return AlertDialog(
      title: Text("Descartar Alterações?"),
      content: Text("Se sair as alterações serão perdidas."),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pop(contexto);
          }, 
          child: Text("Cancelar")
        ),
        FlatButton(
          onPressed: () {
            Navigator.pop(contexto);
            Navigator.pop(contexto);
          }, 
          child: Text("Sim")
        )
      ],
    );
  }
);

// Modal que aparece na parte inferior da tela
showModalBottomSheet(
  context: contexto, // Contexto
  builder: (contexto) { // Construtor que retorna um widget para a modal
    return BottomSheet(
      onClosing: (){}, // Função chamada quando a modal é fechada
      builder: (contexto) { // Construtor
        return () // Rertorna um widget
      }
    );
  }
);

// Botão com popup de menu de seleção
enum Opcoes {opcao1, opcao2} // Cria uma variável definindo as opções do menu
PopupMenuButton<Opcoes>( // Cria o botão do menu, sempre definindo as opções <Opcoes>
  itemBuilder: (contexto) => <PopupMenuEntry<Opcoes>>[
    const PopupMenuItem<Opcoes>( // Cria um item de escolha do menu
      child: Text("Ordernar de A-Z"), // Widget filho, que definirá a opção vista pelo usuário
      value: Opcoes.opcao1, // Valor que define qual opção é essa perante o menu
    ),
    const PopupMenuItem<Opcoes>(
      child: Text("Ordernar de Z-A")
    )
  ],
  onSelected: (Opcoes resultado) { // Função chamada ao selecionar uma opção do menu
    switch (resultado) { // Faz um switch para definir qual opção foi selecionada
      case Opcoes.opcao1: break;
      default:
    }
  }
)
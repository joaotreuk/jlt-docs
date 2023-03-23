// Inicia o aplicativo
void main() => runApp(MeuAplicativo());

// Classe de widget sem estado, ou seja este widget não tem interação
class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Inicia o aplicativo com um MaterialApp
      title: 'Bem-vindo ao Flutter', // Título do aplicativo, este título não aparece no aplicativo
      onGenerateTitle: (BuildContext contexto) {} // Função para gerar o título de forma alternativa
      debugShowCheckedModeBanner: false, // Se mostra ou não uma faixa no topo indicando que o aplicativo está em debug, padrão: true
      theme: ThemeData(), // Tema do aplicativo
      home: HomePage() // Chama a classe da página inicial
    );
  }
}

// Classe de widget com estado
class MeuAplicativo extends StatefulWidget {
  final Map variavel;

  // Método construtor
  MeuAplicativo(); // Método contrutor padrão, não precisa ser declarado
  MeuAplicativo(this.variavel); // Método contrutor com um parâmetro passado
  MeuAplicativo(variavel: variavel); // Definindo o Widget com um parâmetro

  @override
  _ClasseEstado createState() => _ClasseEstado(); // Chama uma função de criação do estado
}

// Função de criação de estado
class _ClasseEstado extends State<Classe> {
  // Pegar uma variavel do widget deste createState
  widget.variavel;

  // Função chamada quando o estado de um StatefulWidget é iniciado pela primeira vez
  @override
  void initState() {
    super.initState();
    // Código vai depois do super.initState()

    // Chama uma função que gera frames como sub-telas logo após o estado do Widget ser iniciado
    WidgetsBinding.instance.addPostFrameCallback((_) {
      MostrarFrame();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

// Altera o estado de um StatefulWidget
setState(() {
  variavel = 'Exemplo'; // Altera uma informação na interface do usuário
}

// Cria uma chave para poder utilizar o contexto de um Scaffold globalmente
final GlobalKey<ScaffoldState> _chaveScaffold = GlobalKey<ScaffoldState>();

// Scaffold é um widget de página, com barra de topo e corpo
Scaffold(
  key: _chaveScaffold, // Declara a chave global do Scaffold
  backgroundColor: Colors.grey[100], // Cor de fundo
  appBar: AppBar(), // Widget da barra do topo
  bottomNavigationBar: BottomNavigationBar(), // Menu de rodapé
  body: Container(), // Aplicando um Container para o corpo da página
  floatingActionButton: FloatingActionButton() // Adiciona um botão flutuante na parte inferior direita do app
),

// Widget de container
Container(
  padding: (), // Define o tipo de espaçamento
  margin: const EdgeInsets.symmetric() // Define a margem
  color: Colors.white, // Cor
  width: 250, // Largura
  height: 50, // Altura
  alignment: Alignment.center, // Alinhamento
  child: (), // Widget filho
  decoration: BoxDecoration() // Widget de decoração
),

// Botão flutuante na parte inferior direita do app
FloatingActionButton( 
  onPressed: _funcao, // Função a ser chamada no evento de clicar no botão
  tooltip: 'Exemplo', // Tooltip que aparece quando o botão é segurado
  child: (), // Widget filho
  backgroundColor: Colors.red // Cor do botão
),
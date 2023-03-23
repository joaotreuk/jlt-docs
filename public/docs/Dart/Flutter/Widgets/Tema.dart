// Cores
Colors.white // Uma cor, exemplo: deepPurple
Colors.red.withOpacity(0.2) // Opacidade da cor em percentual
Color(0xFFfa4d73) // Definir uma cor usando hexadecimal, os dois primeiros caracteres definem a opacidade

// Brilho
Brightness.light

// Estilo de texto
TextStyle(
  color: Colors.white, // Cor do texto
  fontFamily: "Poppins", // Fonte utilizada no texto
  fontWeight: FontWeight.bold, // Define a grossura do texto como negrito, ex: .w500
  fontStyle: FontStyle.italic, // Define o texto como itálico
  fontSize: 18 // Tamanho da fonte do texto
)

// Espaçamento ao redor de um widget
Padding(
  padding: const (), // Define o tipo de espaçamento
  child: () // Widget filho que recebe o espaçamento
)

// Tipos de espaçamento e margem
EdgeInsets.all(10) // Faz o espaçamento igual em todos os lados
EdgeInsets.fromLTRB(10, 0, 10, 0) // Faz o espaçamento de cada canto separadamente, (left, top, right, bottom)
EdgeInsets.only(top: 10, bottom: 10) // Faz o espaçamento apenas dos campos especificados
EdgeInsets.symmetric( // Margem simétrica
  horizontal: 8, // Margem simétrica horiozontal, ou seja se aplica a esquerda e a direita
  vertical: 2 // Margem simétrica vertical
)

// Alinhamento do widget filho
Align(
  alignment: Alignment(
    -0.9, // Alinhamento de -1 (esquerda) até 1 (direita)
    0 // Alinhamento de -1 (baixo) até 1 (cima)
  ), 
  child: () // Widget filho
)

// Alinhamento pré definido
Alignment.center

// Pega a cor primaria do tema utilizado
Theme.of(contexto).primaryColor

// Tema do aplicativo
ThemeData(
  brightness: Brightness.light,
  textTheme: new TextTheme(), // Tema dos textos
  primaryColor: Colors.purple[600], // Muda a cor primária, incluindo a barra do topo
  primarySwatch: Colors.green // Mudar a cor principal do app, incluindo a barra de topo e botões, inclui várias tonalidades da cor definida
  accentColor: Color(0xFFFAFAFA),
  hintColor: Colors.amber,
  scaffoldBackgroundColor: Color(0xFFFAFAFA),
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  inputDecorationTheme: InputDecorationTheme( // Tema dos InputDecoration
    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)), // Cor da borda em foco
    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)), // Cor da borda
    hintStyle: TextStyle(), // Cor dos detalhes da label, por exemplo o prefixo
  ),
  iconTheme: IconThemeData() // Define o tema dos ícones da aplicação
)

// Tema dos textos
TextTheme(
  bodyText2: new TextStyle(),
  bodyText1: TextStyle(),
  button: TextStyle(),
  caption: TextStyle(),
  headline4: TextStyle(),
  headline3: TextStyle(),
  headline2: TextStyle(),
  headline1: TextStyle(),
  headline5: TextStyle(),
  overline: TextStyle(),
  subtitle1: TextStyle(),
  subtitle2: TextStyle(),
  headline6: TextStyle()
)

// Tema dos ícones
IconThemeData(
  color: Colors.blue // Cor dos ícones
)
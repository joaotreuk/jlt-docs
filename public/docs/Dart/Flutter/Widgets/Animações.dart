// Versão animada do Widget container que muda gradualmente seus valores ao longo do tempo
AnimatedContainer(
  height: 100, // Altura
  width: 100, // Largura
  duration: Duration(), // Widget que determina a duração da animação
  curve: Curves.easeIn, // A curva a ser aplicada ao animar os parâmetros deste contêiner
  child: Widget(), // Widget filho, que sofre a animação
)

// Widget que determina uma duração
Duration(
  seconds: 5 // Duração, pode ser específicado em: "seconds: 5", "days: 1", etc.
),

// Widget de loading em forma de círculo
CircularProgressIndicator(
  valueColor: AlwaysStoppedAnimation<Color>(Colors.white), // Cor do widget
  strokeWidth: 5 // Grossura do círculo
),

// Widget de loading em forma uma linha simples
LinearProgressIndicator(),
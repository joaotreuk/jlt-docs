// Gera uma ação com efeito salpico no Widget
InkWell(
  onTap: () {}, // Ação chamada ao toque
  splashColor: Colors.blue, // Cor do efeito de salpico
  child: (), // Widget filho
),

// Widget que permite o widget de imagem filho ser clicado
GestureDetector(
  child: (), // Widget de imagem
  onTap: () {}, // Função a ser chamada ao clicar
  onLongPress: () {} // Função a ser chamada ao segurar
),

// Widget que chama uma função e mostra um ícone de carregamento quando a página é arrastada para baixo
RefreshIndicator(
  child: (), // Widget filho
  onRefresh: (){} // Função a ser chamada
),
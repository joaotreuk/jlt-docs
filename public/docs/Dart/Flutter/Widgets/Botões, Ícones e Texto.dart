// Define um texto
Text( 
  'Olá Mundo', // Texto
  textDirection: TextDirection.rtl, // Faz o fluxo do texto ser da direita para a esquerda
  textAlign: TextAlign.center, // Define o alinhamento horizontal do texto, ex: .start, .end 
  style: TextStyle() // Adiciona o estilo do texto
)

// Cria um ícone
Icon(
  Icons.favorite_border, // Define o ícone
  color: Colors.red, // Define a cor do ícone
  size: 120 // Tamanho do ícone
)

// Cria um ícone botão
IconButton(
  icon: Icon(), // Ícone
  onPressed: (){} // Função a ser chamada no evento de clicar no botão
)

// Botão simples
FlatButton(
  child: (), // Widget filho
  onPressed: null // Função a ser chamada no evento de clicar no botão
)

// Botão com fundo
RaisedButton(
  onPressed: (){}, // Função a ser chamada ao clicar no botão, se deixar como null pode acontecer algum bug
  color: Colors.green, // Cor do botão
  textColor: Colors.white, // Cor do texto / ícone do filho
  child: (), // Widget filho
),
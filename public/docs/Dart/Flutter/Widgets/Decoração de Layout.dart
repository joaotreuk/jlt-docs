// Widget de card com bordas e sombra
Card(
  child: () // Widget filho
),

// Decoração de caixa
BoxDecoration(
  shape: BoxShape.circle, // Define a forma do container
  image: DecorationImage( // Adiciona um widget de imagem para decoração
    image: (), // Widget de imagem
    fit: BoxFit.cover // Tipo de enquadramento da imagem
  ) 
),

// Adiciona um widget circular em forma de avatar
CircleAvatar(
  child: () // Widget filho
),

// Espaço em branco / vazio
SizedBox (
  width: 10 // Largura do espaço, padrão: 0
),
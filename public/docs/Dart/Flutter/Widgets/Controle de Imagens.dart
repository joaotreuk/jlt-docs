// Adiconando uma imagem salva nos assets
Image.asset(
  "assets/images/user.png", // Caminho da imagem nos assets do arquivo pubspec.yaml
  fit: BoxFit.cover, // Tipo de enquadramento da imagem
  width: 32, // Largura da imagem
  height: 1000 // Altura da imagem
)
// ou ?
AssetImage(
  "assets/images/user.png" // Caminho da imagem nos assets do arquivo pubspec.yaml
)

// Obtem uma imagem por um arquivo da mesma
FileImage(
  File() // Arquivo da imagem
)

// Adicionando uma imagem da internet
Image.network(
  "https://developers.giphy.com/static/img/dev-logo-lg.7404c00322a8.gif", // URL da imagem
  height: 300, // Altura da imagem
  width: 250, // Largura da imagem
  fit: BoxFit.cover // Tipo de enquadramento da imagem
)
// ou ?
NetworkImage("URL")

// Imagem com enquadramento
DecorationImage(
  image: (), // Widget de imagem
  fit: BoxFit.cover, // Tipo de enquadramento da imagem
),

// Imagem que aparece de forma mais suave na tela
FadeInImage.memoryNetwork(
  placeholder: kTransparentImage, // Placeholder da imagem
  image: "", // URL da imagem
  height: 300, // Altura da imagem
  fit: BoxFit.cover // Tipo de enquadramento da imagem
)

// Enquadramentos da imagem
BoxFit.cover // Faz a imagem se expandir até completar o widget pai

// Widget com imagem que pode trabalhar com Widgets de ação (InkWell por exemplo)
Ink(
  height: 100,
  width: 100,
  decoration: BoxDecoration(),
),
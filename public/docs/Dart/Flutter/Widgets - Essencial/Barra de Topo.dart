// Widget de barra do topo
AppBar( 
  title: (), // Widget do título
  centerTitle: true, // Se centraliza o título no meio ou não, padrão: false
  backgroundColor: Colors.green, // Cor de fundo da barra
  leading: (), // Adiciona um widget para o canto esquerdo da barra
  actions: <Widget>[], // Adiciona uma lista de widgets para o canto direito da barra
  elevation: 0 // Define o nível da sombra abaixo da barra
),

// Implementando um Widget de barra do topo
class BarraTopo extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }
}

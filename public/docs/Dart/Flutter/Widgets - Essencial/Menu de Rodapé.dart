BottomNavigationBar(
  backgroundColor: Colors.amber, // Cor de fundo da barra
  currentIndex: 0, // Índice do item atualmente selecionado
  selectedItemColor: Colors.pinkAccent, // Cor do item selecionado
  unselectedItemColor: Colors.pinkAccent, // Cor dos itens não selecionados
  iconSize: 40, // Tamanho do ícone dos itens
  selectedFontSize: 16, // Tamanho da fonte do texto do item selecionado
  unselectedFontSize: 16, // Tamanho da fonte do texto dos itens não selecionados
  showSelectedLabels: false, // Se mostra ou não o rótulo do item selecionado
  showUnselectedLabels: false, // Se mostra ou não o rótulo dos itens não selecionados
  onTap: (indiceItem) {}, // Função chamada ao precionar um item (índice do item que foi precionado)
  items: <BottomNavigationBarItem>[], // Lista de itens do menu
),

// Lista de itens do menu
<BottomNavigationBarItem>[
  BottomNavigationBarItem(), // Item do menu
  BottomNavigationBarItem(),
],

// Item do menu
BottomNavigationBarItem(
  icon: Icon(), // Ícone do item
  label: 'Exemplo', // Rótulo do item
),
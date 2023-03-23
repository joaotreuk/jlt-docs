// Adiciona um divisor para uma lista, coluna, etc.
Divider();

// Aplica um widget de lista
ListView.builder( 
  padding: (), // Define o tipo de espaçamento
  itemCount: 10, // Número de itens na lista
  reverse: true, // Se definido como true então os itens começaram a ser criados de baixo para cima, padrão: false
  itemBuilder: (BuildContext contexto, int i) { // Função de criação de cada item
    return (); // Adiciona um widget para a lista
  }
),

// Item para uma lista
ListTile( 
  title: (), // Título / texto da lista
  trailing: (), // Adiciona um widget no final da linha,
  onTap: () { // Adiona um evento ao clicar na linha
    setState(() { // Redefine o estado, atualizando a U.I.
      print("Linha precionada");
    });
  }
),

// Item com uma caixa de seleção para uma lista
CheckboxListTile(
  title: (), // Título / texto da linha
  key: Key(), // Chave única da linha
  value: true, // Valor da caixa de seleção, se for true então a caixa de seleção ficará marcada
  onChanged: (valor) {}, // Função a ser chamada quando o valor da caixa de seleção ser mudada
  secondary: () // Widget que aparece antes do título
),

// Item que é possível remover arrastando
Dismissible(
  child: (), // Widget filho, por exemplo um CheckboxListTile
  key: Key(), // Uma String que é chave única do item
  background: (), // Widget do fundo da tela de arrastar
  direction: DismissDirection.startToEnd, // Direção em que será possível remover o item, por padrão removerá para os dois lados
  onDismissed: (direcao) { // Função a ser chamada quando um item é arrastado para fora
    if (direcao == DismissDirection.endToStart) print('Esquerda'); // Verifica em qual direção o item está sendo arrastado
  },
),
// Linha de widgets
Row(
  crossAxisAlignment: CrossAxisAlignment.start, // Posição vertical dos filhos
  mainAxisAlignment: MainAxisAlignment.center, // Alinhamento principal dos filhos, ou seja horizontalmente
  children: <Widget>[] // Lista de widget filhos
),

// Coluna de widgtes
Column(
  mainAxisAlignment: MainAxisAlignment.end, // Alinhamento principal dos filhos, ou seja verticalmente
  crossAxisAlignment: CrossAxisAlignment.stretch, // Posição horizontal dos filhos, stretch faz o contéudo preencher o espaço todo
  mainAxisSize: MainAxisSize.min, // Define se a altura da coluna ocupa o máximo ou mínimo possível do espaço, padrão: máximo
  children: <Widget>[] // Lista de widget filhos
),

// Centraliza no centro da tela
Center(
  child: () // Filho, exemplo: um texto
),

// Faz o widget filho se expandir o máximo possível em relação ao widget pai
Expanded(
  child: () // Widget filho
),

// Permite a rolagem da tela para cima e para baixo quando o conteúdo passa do limite do smartphone
SingleChildScrollView(
  padding: (), // Define o tipo de espaçamento
  child: () // Widget filho
),

// Uma lista em grade
GridView.builder(
  padding: (), // Define o tipo de espaçamento
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(), // Estilo da grade
  itemCount: 10, // Número de itens da listagem
  itemBuilder: (contexto, indice) { // Função de criação de cada item
    return (); // Retornar um widget para a lista
  }
),

// Estilo da grade
SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2, // Número de itens por linha
  crossAxisSpacing: 10, // Tamanho do espaçamento entre itens da mesma linha
  mainAxisSpacing: 10 // Tamanho do espaçamento entre linhas
),

// Faz um filho widget se sobrepor em outro widget filho
// Por exemplo o segundo widget fica em cima do primeiro widget
Stack(
  children: <Widget>[] // Widgets filhos
)
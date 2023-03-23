// Definindo um formulário
Form(
  key: _chave, // Chave do formulário
  child: () // Widget filho
)

// Chave de formulário
GlobalKey<FormState> _formChave = new GlobalKey<FormState>();
if (_formChave.currentState.validate()) {} // Retorna true se um formulário estiver valido
_formChave = GlobalKey<FormState>(); // Resetar a chave para fazer as mensagens de alerta do formulário sumirem

// Controlador de edição do texto
TextEditingController conNome = TextEditingController();

// Controlador de foco de um input
final focoNome = FocusNode();

// Caixa de texto sem formulário
TextField(
  keyboardType: TextInputType.number, // Tipo do teclado
  textAlign: TextAlign.center, // Alinhamento do texto digitado
  decoration: InputDecoration(), // Label
  style: TextStyle(), // Estilo do texto
  controller: conNome, // Controlador de edição do texto
  focusNode: focoNome, // Adiciona um controlador de foco
  onChanged: (texto) {}, // Função chamada quando o texto muda
  onSubmitted: (texto) {} // Função chamada ao apertar a tecla "Enter" do teclado
)

// Caixa de texto para um formulário
TextFormField(
  controller: conNome, // Controlador de edição do texto
  focusNode: focoNome, // Adiciona um controlador de foco
  keyboardType: TextInputType.text, // Tipo do teclado
  textAlign: TextAlign.center, // Alinhamento do texto digitado
  style: TextStyle(), // Estilo do texto
  decoration: InputDecoration(), // Label
  validator: (valor) { // Função validadora
    if (valor.isEmpty) {
      return "Campo Obrigatório!"; // Retorna uma mensagem abaixo do campo para caso o campo não esteja valido
    }
  }
)

// Label para inputs
InputDecoration(
  labelText: "Nome", // Texto da label
  labelStyle: TextStyle(), // Estilo do texto da label
  border: OutlineInputBorder(), // Adiciona uma borda para o input
  prefixText: "R\$ " // Adiciona um prefixo para o input
)

// Faz a label ficar grudada no campo
InputDecoration.collapsed(
  hintText: "Nome" // Texto da label
)

// Tipos de teclados
TextInputType.text // Teclado completo para textos
TextInputType.number // Teclado numérico
TextInputType.numberWithOptions(decimal: true) // Teclado numérico com "." e "," no iOS
TextInputType.phone // Teclado para número de telefone
TextInputType.email // Teclado para e-mail

// Verifica se a caixa de seleção está vazia
if (conTexto.text.isEmpty) print('Erro');

// Limpa uma caixa de seleção
conTexto.clear(); // Não precisa de setState

// Foca em um input
FocusScope.of(contexto).requestFocus(
  focoNome // Controlador de foco
);
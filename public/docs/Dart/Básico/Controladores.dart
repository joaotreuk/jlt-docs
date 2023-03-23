class ContatoHelper {
  // Passa a instância do controlador
  // Dessa forma apenas existe um objeto desta classe, sem importar se variáveis diferentes forem deste tipo
  static final ContatoHelper _instancia = ContatoHelper.internal();
  factory ContatoHelper() => _instancia;
  ContatoHelper.internal();
}
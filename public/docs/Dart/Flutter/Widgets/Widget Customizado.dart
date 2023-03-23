// Botão customizado
class LTBotao extends StatelessWidget {
  final String texto;
  final Function funcao;
  final double largura;

  // Paramêtros do botão
  LTBotao({
    @required this.texto, // Paramêtro obrigatório
    @required this.retorno,
    this.largura
  });

  @override
  Widget build(BuildContext contexto) {
    return Container(
      color: Theme.of(contexto).primaryColor,
      width: largura != null ? largura : 250,
      child: FlatButton(
        child: Row(
          children: <Widget>[
            Text (
              texto
            )
          ]
        ),
        onPressed: funcao
      )
    );
  }
}
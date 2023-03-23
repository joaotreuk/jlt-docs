// Classe privada
class _Classe {}

final String idColuna = "idColuna";
final String nomeColuna = "nomeColuna";

class Classe {
  String atributo; // Declarando um atributo
  bool atributo2;

  // Método construtor
  Item(
    this.atributo, // Parâmetro
    {this.atributo2} // Parâmetro opcional
  );
  Item({this.atributo, this.atributo2}); // Todos parâmetros opcionais

  // Função de obter dados de um item da lista do JSON
  Item.fromMap(Map mapa) { 
    id = mapa[idColuna];
    nome = mapa[nomeColuna];
  }

  // Função de converter os dados para um mapa
  Map toMap() {
    String nome;

    Map<String, dynamic> mapa = {
      nomeColuna: this.nome, // Pegando a variável do bloco pai
      idColuna: id
    };

    return mapa;
  }
}
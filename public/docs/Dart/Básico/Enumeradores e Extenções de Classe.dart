// Enumerador
enum Cores { Azul, Vermelho } // Definindo um enumerador
if (variavel == Cor.Azul) {} // Utilizando um enumerador

// Extensão de classe, é possível extender enumeradores e tipos (Int, String)
extension CoresMap on Cores {
  static const Map<Cores, String> values = {
    Cores.Azul: 'Azul',
    Cores.Vermelho: 'Vermelho',
  };

  // Adicionando uma nova propriedade para o objeto do enumerador
  String get value => values[this];
}

// Definindo classes
class MinhaClasse {
  // Método construtor
  constructor(nome, idade = 18) {
    // Propriedades não são declaradas, apenas atribuidas
    this.nome = nome; // Atribuindo um valor para uma propriedade
    this.idade = idade;
    
    // Chamadas da classe pai
    super(nome); // Chamar o construtor da classe pai
    super.meuMetodo(); // Chamar um método da classe pai, que pode ter sido sobrescrito pela classe filha
  }

  // Método GET
  // Método que retorna uma informação
  get informacao() {
    // Chamar um método da classe
    return this.meuMetodo();
  }

  // Definindo um método
  meuMetodo() { }

  // Definindo um método estático
  // Métodos estáticos são chamados sem a instanciação da sua classe e não podem ser chamados quando a classe é instanciada
  static meuMetodo(a) {
    return a;
  }

  // Sobrescrever a espécie da classe
  // Por exemplo, se for fazer uma verificação de instanceof será válido o objeto da espécie definida
  static get [Symbol.species]() { return Array; }
}

// Criando um novo elemento da classe
let minhaClasse = new MinhaClasse('Teste');

// Definindo valores para propriedades estáticas
MinhaClasse.valorEstatico = 2;

// Herança
// Herdar propriedades e métodos de um objeto pai
class Cachorro extends Animal { } // Herdando de outra classe ou de uma função
Object.setPrototypeOf(Cachorro.prototype, MeuObjeto); // Aplicar herança de um objeto normal (a classe filha precisa ser definida antes)

// Herança múltipla
class Classe1 {}
const Classe2 = Base => class extends Base { } // Segunda classe a ser herdada
const ClasseFinal = Classe2(Classe1);
var minhaClasse = new ClasseFinal();

// Declarando uma expressão de classe
let MinhaClasse = class MinhaClasse { /* Class code here */ };
let MinhaClasse = class { /* Class code here */ }; // Classes setadas para expressões não precisam necessariamente ser nomeadas
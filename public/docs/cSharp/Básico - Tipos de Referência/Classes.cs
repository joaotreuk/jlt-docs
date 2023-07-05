// Declaração
class MinhaClasse { /* Propriedades e métodos vão aqui */ }
public class Leao : Animal { } // Herdar de uma classe pai
public class Leao : ILeao { } // Implementar uma interface
public class Leao : Animal, ILeao { } // Herdar de uma classe pai e implementar uma interface

// Classes abstratas
/* São classes com implementações ausentes ou incompletas e que precisam ser herdadas p/ uma classe que implemente seus métodos
ou proprieades abstratas */
// Classes abstratas não podem ser instanciadas
abstract class Forma { public abstract int GetArea(); } // Com um método abstrato
class Quadrado : Forma { public override int GetArea() => side * side; } // Dar override no método abstrato da classe abstrata

// Definindo um atributo para uma classe ou método
// Atributos servem para orientar operações
[Atributo]
public class MinhaClasse { }

// Atribuição
MinhaClasse minhaClasse = new MinhaClasse();
MinhaClasse minhaClasse = new(); // Igual o comando acima, porém simplificado
MinhaClasse minhaClasse = new MinhaClasse(parametro); // Passando um parâmetro para o método construtor

/*-------------------- PROPRIEDADES --------------------*/

private int minhaPropriedade; // Propriedade privada
public string MinhaPropriedade { get; set; } // Propriedade pública
public string MinhaPropriedade { get; private set; } // Definindo apenas o set como privado
public static int Variavel = 1; // Propriedade estática (Pode ser acessada sem a instanciação da classe)

// Definindo manualmente um método set ou get de uma propriedade
public int MinhaPropriedade
{
    get { return minhaPropriedade; } // É preciso usar uma propriedade privada de meio de campo
    set { minhaPropriedade = value + 1; } // "value" é o valor setado
}

// Get manual simplificado
public int PropriedadeB => PropriedadeA + 2;

// Pode-se acessar uma propriedade da classe usando o 'this', p/ quando a uma variável com o mesmo nome por exemplo
this.propriedade;


/*-------------------- MÉTODOS --------------------*/

// Método construtor
// Caso não seja especificado, será usado um construtor vazio automaticamente
// Uma classe pode ter vários construtores
public MinhaClasse() { }
public MinhaClasse(string prop1) { Prop1 = prop1; } // Construtor que recebe e atribui valores iniciais p/ as propriedades
public MinhaClasse(int prop1, int prop2) : this(prop1) { } // Simplificando um construtor usando outro construtor como base
public MinhaClasse(int prop1, int prop2) : base(prop1) { } // Igual o anterior, porém usando um construror da classe herdada

// Métodos
void MeuMetodo(int parametro) { }
public void MeuMetodo(int param, int param2 = 0) { } // Usando parâmetos opicionais
public void MeuMetodo(out int param) { param = 44; } // Parâmetro cujas modificações afetam a variável passada para o mesmo

// Métodos estáticos
// Pode ser executado com ou sem a instanciação da classe
static public void MeuMetodo() { }
MinhaClasse.MeuMetodo(); // Usando um método estático (sem precisar criar o objeto)

// Usando um objeto genérico para o método
public void MeuMetodo<T>(T parametro) { T variavel; }
// Restrição p/ método genérico, no exemplo diz que o tipo a ser passado precisa ser uma classe
public void MeuMetodo<T>() where T : class {}
minhaClasse.MeuMetodo<int>(); // Chamando um método genérico

// Método de extensão
// Adicionar um novo método para um tipo existente sem modifica-lo
// São métodos estáticos, mas são chamados como se fossem métodos de instância no tipo extendido
public static int Incrementar(this int numero) { return numero++; } // O primeiro parâmetro tem que ser o tipo sendo extendido
int numero = numero.Incrementar(); // Chamando um método de extensão

// Método usando uma lista de parâmetros
// Não se pode declarar outros parâmetros depois do parâmetro de lista (antes da declaração dele pode)
public void MeuMetodo(params int[] numeros) { }
MeuMetodo(1, 8, 2); // Chamando o método passando vários itens para a lista de parâmetros
MeuMetodo(numeros); // Também pode-se passar uma array diretamente
MeuMetodo(); // Se não passar nada é tratado como uma lista vazia
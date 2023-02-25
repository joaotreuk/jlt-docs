// Usadas p/ definir conteúdo obrigatório p/ as classes que forem implementá-las

// Declaração
public interface IMinhaInterface
{
  // Propriedades obrigatórias
  public string Nome { get; }

  // Métodos obrigatórios
  void Metodo();
}

// Interfaces podem herdar de uma interface pai
public interface ILeao : IAnimal { }
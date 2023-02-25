// Estruturas são semelhantes a classes
// São tipos de valor, ou seja herdam implicitamente da classe System.ValueType
/* Deve-se usar quando há certeza de que as instâncias dele serão pequenas e terão uma duração curta ou que serão somente
utilizadas embutidas em outros objetos, devido a possíveis problemas de performance */

// Declaração
public struct MinhaEstrutura
{
  // Propriedades
  public double X { get; }

  // Método construtor
  public MinhaEstrutura(double x) { X = x; }

  // Métodos
  public void MeuMetodo() { }
}
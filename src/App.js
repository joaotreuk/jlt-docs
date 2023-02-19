import { useEffect } from "react";

function App() {
  useEffect(() => {
    document.getElementById('cod-atribuicao').innerHTML =
      '// Criando uma array com um tamanho específico\nint[] matriz = new int[5];\n\n'
      + '// Cria uma nova array, passando um valor\nint[] matriz = {1, 2, 3};\n\n'
      + '// Aplica um novo valor a array\nstring[] matriz = new string[] {"A", "BB", "CCC"};';

    //hljs.highlightAll();
  }, []);

  return (
    <>
      <h1>Arrays</h1>

      <strong>Atribuição</strong>
      <pre>
        <code class="language-csharp" id="cod-atribuicao"></code>
      </pre>

      {/* <br />
      <br />
      <strong>Propriedades</strong>
      <br />

      <code>
        <span style="color: rgb(13, 103, 199)">int tamanho = matriz.Length;</span>
        <span style="color: green">// Obtém a quantidade de itens da array</span>
      </code>

      <h2>MÉTODOS</h2>

/// <summary>Copia um intervalo de uma Array para outra Array</summary>
///
      <param name="sourceArray">O Array que contém os dados a serem copiados</param>
///
      <param name="sourceIndex">Um inteiro de 64 bits que representa o índice no sourceArray no qual a cópia é iniciada
      </param>
///
      <param name="destinationArray">O Array que recebe os dados</param>
///
      <param name="destinationIndex">Um inteiro de 64 bits que representa o índice no destinationArray no qual o
        armazenamento é iniciado</param>
///
      <param name="length">Um inteiro de 64 bits que representa o número de elementos a se copiar. O inteiro deve estar
        entre zero e MaxValue, inclusive</param>
      Array.Copy(sourceArray, destinationArray, length); // Inicia por padrão no começo de cada array
      Array.Copy(sourceArray, sourceIndex, destinationArray, destinationIndex, length);

/// <summary>Faz um filtro na Array retornando uma nova Array com apenas os elementos que cumprem a condição
      </summary>
///
      <param name="array">O Array a ser procurado</param>
///
      <param name="match">O Predicate
        T(adicionar maior menor aqui) que define as condições dos elementos a serem pesquisados</param>
/// <returns>Um Array que contém todos os elementos que correspondem às condições definidas pelo predicado
        especificado, se encontrado; caso contrário, um Array vazio</returns>
      int[] matriz = Array.FindAll(array, match);

/// <summary>Obtém o índice da primeira ocorrência de um determinado item em uma array</summary>
///
      <param name="array">O Array a ser buscado o índice</param>
///
      <param name="value">Item cujo índice será buscado</param>
///
      <param name="startIndex">Índice inicial da busca</param>
///
      <param name="count">Número de itens a serem comparados com a busca a partir do startIndex</param>
/// <returns>Índice do item passado</returns>
      int indice = Array.IndexOf(array, value); // Pesquisa por toda array até encontrar
      int indice = Array.IndexOf(array, value, startIndex); // Pesquisa do índice passado até o final da array
      int indice = Array.IndexOf(array, value, startIndex, count);

/// <summary>Junta uma array em uma string separando os valores por: ','</summary>
/// <returns>String com a junção</returns>
      string String = string.Join("','", matriz); */}
    </>
  );
}

export default App;

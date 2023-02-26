// Dicionários armazenam uma lista de chaves e valores para suas devidas chaves
// Um dicionário não pode ter chaves repetidas
using System.Collections.Generic;

/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/

// Declarando um dicionário vazio
Dictionary<chave, valor> dicionario = new Dictionary<chave, valor>();
IDictionary<int, object> dicionario = new Dictionary<int, object>(); // Usando a interface

// Atribuíndo com uma lista de chaves/valores
Dictionary<string, int> dicionario = new Dictionary<string, int>
{
  { "chave", 1 },
  { "chave2", 2 }
};

/*-------------------- PROPRIEDADES --------------------*/

// Obter ou atribuir um valor pela sua chave
// Se a chave não existir um novo item será criado
// Se tentar obter um valor de uma chave que não existe uma exceção será gerada, usar o método TryGetValue nestes casos
dicionario["chave"] = valor;

// Obter o comparador usado para comparar as chaves do dicionário
IEqualityComparer<int> comparador = dicionario.Comparer;

// Obter a quantidade de itens no dicionário
int quantidade = dicionario.Count;

// Obter uma coleção de chaves do dicionário
Dictionary<string, int>.KeyCollection chaves = dicionario.Keys;
ICollection<string> chaves = dicionario.Keys; // A interface retornará um objeto ICollection

// Obter uma coleção de valores do dicionário
Dictionary<string, int>.ValueCollection valores = dicionario.Values;
ICollection<int> valores = dicionario.Values; // A interface retornará um objeto ICollection

/*-------------------- MÉTODOS --------------------*/
// Herda os métodos da classe Object

// Adicionar um novo item para o dicionário
// Uma exceção será gerada se a chave já estiver no dicionário
dicionario.Add("chave", "valor");

// Remover todos os itens do dicionário
dicionario.Clear();

// Retorna se uma chave existe ou não no dicionário
bool existe = dicionario.ContainsKey("chave");

// Retorna se um valor existe ou não no dicionário
bool existe = dicionario.ContainsValue(10);

// Obter um elemento que pode ser usado para percorrer a coleção do dicionário
Dictionary<string, int>.Enumerator enumerador = dicionario.GetEnumerator();

// Implementa a interface ISerializable e retorna os dados necessários para serializar a instância Dictionary<TKey,TValue>.
dicionario.GetObjectData(info, contexto);

// Implementa a interface ISerializable e gera o evento de desserialização quando a desserialização for concluída.
dicionario.OnDeserialization(objeto);

// Remover um item do dicionário pela sua chave
// Retorna se o valor foi removido com sucesso ou não
bool foiRemovido = dicionario.Remove("chave");

// Tentar obter um valor do dicionário
// Retorna se a chave existe e o valor foi obtido com sucesso ou não
bool existe = dicionario.TryGetValue("chave", out int valor);

/*-------------------- FUNCIONALIDADES --------------------*/

// Dicionários são coleções de objetos KeyValuePair
foreach (KeyValuePair<string, int> kvp in dicionario) { }



// Uma coleção de valores ou chaves de um objeto dicionário

/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/

// Obtendo os valores ou chaves de um dicionário
Dictionary<Chave, Valor>.KeyCollection chaves = dicionario.Keys; // Obtendo as chaves de um dicionário
Dictionary<string, int>.ValueCollection valores = dicionario.Values; // Obtendo os valores de um dicionário

/*-------------------- FUNCIONALIDADES --------------------*/

// As chaves/valores são uma coleção dos tipos determinados do dicionário
foreach (int valor in valores) { }
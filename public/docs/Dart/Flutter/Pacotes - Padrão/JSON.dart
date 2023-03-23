import 'dart:convert';
// Site para conveter um JSON para uma classe dart: https://javiercbk.github.io/json_to_dart

// Converções
Map json = json.decode(texto); // Converte uma string JSON para um mapa
String dados = json.encode(aFazer); // Converte uma lista para uma string JSON
Iterable json = jsonDecode(texto); // Converte uma string JSON para uma lista mapeável
String json = jsonEncode(lista); // Converte uma lista para uma string JSON

// Mapeia uma lista de JSON, passando pela função de obter dados de um JSON
novaLista = json.map((e) => deJson(e)).toList();

// Pega um elemento do json
json["results"]
json["results"]["currencies"] // Pega um filho daquele elemento
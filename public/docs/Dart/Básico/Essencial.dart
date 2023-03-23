// Escreve algo no console de debug
print('Exemplo');
debugPrint("exemplo"); // Escreve apenas Strings no console

// Importando
// Uma biblioteca deve se adicionada no arquivo "pubspec.yaml", então devesse salvar o arquivo
import 'package:flutter/material.dart'; // Adicionar a importação a um arquivo
import 'package:http/http.dart' as http; // Dar um apelido para a biblioteca
import 'views/inicio.dart'; // Importar outro arquivo do aplicativo

// Variáveis
int _variavel; // Variáveis começando com "_" são variáveis privadas
final String variavel; // Final define uma variável constante
const variavel;
var variavel; // Variável de tipo não definido
Function funcao; // Uma função como variável
Widget criarCampoTexto; // Variável de tipo Widget

// Condições
if (1 == 1 && 1 == 2) {} else if (2 == 2) {} else {} // Se
if (1 == 1) print(1) else print(0) // "Se" simplificado
switch (variavel) { case : break; default: } // Switch
variavel ?? "" // Se a variável for nula retorna um texto vazio
elemento?.nome // Retorna null no caso de um elemeto for nulo antes de obter seu atributo

// Laços
for(int item in lista) {} // Laço que percorre cada item em uma lista
lista.forEach((item){}); // Laço que percorre cada item em uma lista

// Funções
void main() { runApp(MeuAplicativo()); } // Função básica
void funcao() => print(1); // Função de uma linha
Null funcao() {} // Função que retorna nulo

// Try Catch
try {} catch (excecao) {}
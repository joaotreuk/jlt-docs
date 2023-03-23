// english_words: ^3.1.0
import 'package:english_words/english_words.dart';

// Define uma palavra aleatória para a variável
final palavraDupla = WordPair.random();

// Capitaliza a palavra
palavraDupla.asPascalCase;

// Gera 10 palavras duplas aleatórias
final palavrasAleatorias generateWordPairs().take(10);

// Matriz de palavras
final _matrizPalavras = <WordPair>[]; // Cria uma matriz de palavras duplas
_matrizPalavras.addAll(palavrasAleatorias); // Adiciona palavras duplas para a matriz
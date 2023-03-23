import 'dart:io';

// Pegar um arquivo pelo seu caminho
File arquivo = File("${diretorio.path}/dados.json");

// Escreve uma string no arquivo
File arquivo = arquivo.writeAsString("Exemplo");

// Ler um arquivo com uma string
String dados = arquivo.readAsString();
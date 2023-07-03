<?php

// Declarando textos
$texto = 'Exemplo';
$texto = "Exemplo"; // Usando aspas duplas qualquer variável ou caracter de escape será expandido antes de ser atribuído

// Transformação
$texto = str_pad('1500', 10, '0', STR_PAD_LEFT); // Adiciona um caracter para uma string até chegar ao tamanho passado (string, tamanho, caracter para adicionar, lado a ser adicionado)
$texto = str_pad('1500', 10, '0', STR_PAD_RIGHT); // Adiciona os caracteres para a direita do texto
$texto = Str_Replace('-', '/', '10-04-2017'); // Substitui caracteres de uma string (caracter antigo, novo caracter, string)
$texto = StrToLower("TESTE"); // Transforma todas as letras em minúsculas
$texto = StrToUpper("teste"); // Transforma todas as letras em maiúsculas
$texto = SubStr('10/04/2017', 3, 2); // Remove parte de um texto (string, posição inicial da nova string, caracteres a pegar)

// Outros métodos
$tamanho = StrLen("teste"); // Retorna o número de caracteres
$posicao = StrPos('parece uma frutaria', 'fruta'); // Retorna a posição inicial de um texto em relação a outro
$lista = explode(';', 'sabonete;mamadeira;fralda;chupeta'); // Explode um texto em uma lista por um determinado caracter separador

// Útil
$texto = "Olá"." Mundo"; // Concatenando strings
$texto .= " Mundo"; // Atribuição com concatenação

?>
<?php

// Declarando numéricos
$inteiro = 1234;
$float = 1.234;
$boleano = 1; // Não existe variáveis boolean, usa-se 0 e 1 ao invés disso

// Conversão
$numero = "1" + 1; // Strings são automaticamente convertidas para numéricos
$numero = settype($texto, integer); // Converte uma string para numérico

// Funções matematicas
$sobra = bcmod(4, 2); // Divide o primeiro número pelo segundo e retorna a sobra, útil para verificar se um número é par (Pares divididos por 2 retornam 0)

?>
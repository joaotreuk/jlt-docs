<?php

// Definição de Unix Timestamp
$timestamp = 1479235715; // Timestamp da data '18:48:35 de 15/11/2016', ou seja é o número de segundos que ocorreram desde as 0h de 01/01/1970 até esta data
$timestamp = time(); // Obtem o timestamp atual
$timestamp = mktime(12, 00, 50, 12, 30, 2017); // Cria um timestamp pelos pedaços da data (hora, min, seg, mês, dia, ano)

// Formatação
$dataFormatada = date('d/m/Y h:i:s'); // Formata a data e hora atuais
$dataFormatada = date('D'); // Obtem o dia da semana
$dataFormatada = date('F'); // Obtem o nome do mês

?>
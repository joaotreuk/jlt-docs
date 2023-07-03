<?php

  // No arquivo de configuração 'php.ini' descomentar a extensão: extension=pgsql

  // Gerenciando conexão com o banco
  $conexao = pg_connect('host=localhost user=postgres password=1234 dbname=Teste'); // Cria a conexão a partir de uma string de conexão
  pg_close($conexao); // Encerra a conexão

  // Executando comandos
  $resultado = pg_query($conexao, 'SELECT * FROM NomeTabela'); // (conexão, query)

  // Manipulando os resultados de uma consulta
  $linha = pg_fetch_object($resultado); // Obtem a primeira linha da consulta
  while ($linha = pg_fetch_object($resultado)) {} // Percorre os resultados enquanto houver, redefindo a linha
  $valorColuna = $linha->nomecoluna; // As colunas são acessadas pelo seu nome em letras minúsculas

?>
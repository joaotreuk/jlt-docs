<?php

  // Definindo a sessão
  session_start(); // Inicia a sessão no arquivo atual para uso
  session_id(35); // Define um identificador para a sessão atual
  $idSessao = session_id(); // Obtem o identificador definido para a sessão
  session_destroy(); // Destrói todos os dados registrados para uma sessão

  // Variáveis de sessão
  $_SESSION['nome'] = 'João'; // Definindo uma variável de sessão
  session_unset(); // Limpar todas as variáveis da sessão

?>
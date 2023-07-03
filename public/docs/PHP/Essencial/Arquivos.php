<?php

  /* Verificar no arquivo php.ini as seguintes configurações:
    ; Se permite fazer upload de arquivos ou não
    file_uploads = On

    ; Tamanho máximo de arquivos que podem ser feito upload
    upload_max_filesize = 20M
  */

  // Informações de um arquivo enviado por POST de form-data
  $nome = $_FILES['nameInput']['name']; // O nome original do arquivo no computador do usuário
  $tipo = $_FILES['nameInput']['type']; // O tipo mime do arquivo, se o browser deu esta informação. Um exemplo pode ser "image/gif".
  $tamanho = $_FILES['nameInput']['size']; // O tamanho, em bytes, do arquivo
  $temp = $_FILES['nameInput']['tmp_name']; // Caminho temporário do arquivo, como foi guardado no servidor
  $erro = $_FILES['nameInput']['error']; // O código do erro associado ao upload

  // Métodos
  $existe = file_exists("C:/Arquivo.jpg"); // Verifica se um arquivo existe no servidor ou não
  $sucesso = move_uploaded_file($temp, "C:/Arquivo.jpg"); // Move um arquivo do local de arquivos temporários para outro local, retorna se moveu com sucesso ou não
  unlink("C:/Arquivo.jpg"); // Deleta um arquivo

?>
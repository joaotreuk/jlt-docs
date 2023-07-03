<?php

  // Criando uma classe
  class NomeClasse {
    // Definindo atributos
    public $titulo;
    var $nomeAtributo;

    // Método construtor
    function __construct($nome) {
      echo("O ".$nome." foi criado!");
    }

    // Definindo métodos
    function NomeMetodo($parametro) {
      $this->nomeAtributo = $parametro; // Setando um atributo
    }
  }

  // Criando um novo objeto da classe
  $nomeClasse = new NomeClasse;
  $nomeClasse = new NomeClasse($parametro); // Passando parâmetros para o método construtor
  $nomeClasse->$nomeAtributo; // Acessando um atributo
  $nomeClasse->NomeMetodo(12); // Executando um método

  // Herança, heradando propriedades e métodos de outra classe
  include_once('NomeClassePai.class.php');
  class NomeClasse extends NomeClassePai {}

?>
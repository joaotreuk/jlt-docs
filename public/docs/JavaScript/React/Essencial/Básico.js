// Biblioteca para criação de interface de usuário
import React, { Component } from 'react';
import ReactDOM from 'react-dom';

// Aplicando um componente para um elemento HTML
ReactDOM.render(meuComponente, divExemplo);
ReactDOM.render(React.createElement(NomeComponente), divExemplo); // Para componentes de classe, deve-se usar a função de criação de elemento no "render()" da classe e aqui

// Obter o node elemento de um componente
let elemento = ReactDOM.findDOMNode(this);
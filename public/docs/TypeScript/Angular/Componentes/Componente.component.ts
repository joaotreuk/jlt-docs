import { Component } from '@angular/core';

// Criando um componente
@Component({
  selector: 'exemplo', // Define a tag de seleção do componente, exemplo: <exemplo></exemplo>
  templateUrl: './exemplo.component.html', // Define o arquivo HTML do componente
  template: '<h1>Exemplo</h1>', // Adicionando o template diretamente
  styleUrls: ['./exemplo.component.css'], // Define o arquivo de estilo do componente
  providers: [MeuService] // Define uma lista dos serviços disponivéis para este componente
})
// Componente é exportado em conjunto como uma classe
export class ExemploComponent {

  // Variáveis de input
  @Input() titulo: string; // Definindo uma variável de input para o componente
  <exemplo [titulo]="'Meu titulo'"></exemplo> // Defindo a variável ao invocar o componente
} 

// Implementando a interface OnInit para definir um método de inicialização
import { OnInit } from '@angular/core';
@Component()
export class Exemplo2 implements OnInit {
    // Método chamado quando antes do HTML ser gerado
    ngOnInit(): void {}
}
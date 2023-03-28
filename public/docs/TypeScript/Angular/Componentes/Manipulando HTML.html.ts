/*
<!-- Exibindo variáveis do componente -->
<p>{{variavel}}</p>

<!-- Usando transformadores pipe -->
<p>{{variavel | lowercase}}}</p> <!-- Faz todas letras ficarem em mínusculo -->
<p>{{variavel | uppercase}}</p> <!-- Faz todas letras ficarem em maíusculo -->
<p>{{variavel | json}}</p> <!-- Formata em JSON -->
<p>{{variavel | meuPipe}}</p> <!-- Usando pipe criado -->

<!-- Usando um laço for do TypeScript no HTML -->
<tr *ngFor="let item of lista">
    <td>{{item.id}}</td>
    <td>{{item.nome}}</td>
</tr>

<!-- Define se o elemento aparece ou não a partir da expressão -->
<div *ngIf="1 > 2"></div>

<!-- Chamando um método do componente a partir de um evento HTML -->
<button (click)="MeuMetodo()"></button>
<button (click)="MeuMetodo($event)"></button> <!-- Passando o evento para o método -->
evento.target.files <!-- Obtendo arquivos enviados pelo evento de um input file -->
evento.target.files.length <!-- Obtem a quantidade de arquivos -->
<form (ngSubmit)="login()"></form> <!-- Chama um método no submit de um formulário -->

[formGroupName]="i" <!-- Colchete para poder usar uma variável -->

<input type="text" [(ngModel)]="variavel"> <!-- Atualiza a variável conforme o usuário escreve no campo -->
<input [ngClass]="{'minhaClasse': 1 == 1}"> <!-- Define se adiciona ou remove uma classe conforme uma expressão -->
<button [disabled]="2 > 1"></button> <!-- Define se um elemento está habilitada ou não com base me uma expressão -->
<div [style.width.px]="numero"></div> <!-- Usando variáveis do TypeScript como valores para o estilo CSS -->
<div [style.margin.px]="numero"></div>

<!-- Definindo um id para o elemento -->
<button #meuBotao></button>
formExemplo.valid <!-- Retorna se o formulário com o id está valido ou não -->
*/
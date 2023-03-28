// A instalação do Angular é feita através de comandos NPM do node js

// Instalar o Angular na máquina
// npm install -g @angular/cli

// Cria um projeto angular
// ng new NomeAplicativo

// Compila e roda o aplicativo Angular
// ng serve

// Gerar arquivos
// ng g g pasta/nomeArquivo # Gerar um guardião

/*
Estruturação de pastas e arquivos

e2e -> Pasta de testes unitários
package.json -> Dependências do projeto, ele auto instalará qualquer dependência NPM que nele estiverem contidas
.editorconfig -> Padrão para formatação do projeto, a extenção do Prettier funciona em auxilio a este arquivo
tslint.json -> Definição dos padrões de codificação do TSLint
src -> Arquivos de desenvolvimento
    - styles.css -> Arquivo em que ficam as importações dos arquivos CSS do projeto
    - index.html -> Página inicial do aplicativo
    - app -> Pasta aonde ficam os componentes
        - app.module.ts -> Arquivo que refêrencia todos os componentes do projeto, e adiciona-se as bibliotecas a serem utilizadas
    - assets -> Arquivos de midia
        - img -> Arquivos de imagem

Atalhos das extenções do Visual Studio Code
Generate Component -> Na pasta app, para cria um novo componente e já adiciona a sua refêrencia para o arquivo app.module.ts
*/
# JLT Docs

Aplicativo de minhas documentações resumidas de estudos em programação e banco de dados.

## Estrutura

* public/docs - Pasta da documentação
* gerar_docs_json.py - script que gera o arquivo JSON da documentação
* publicacao.bat - arquivo de publicação p/ o Firebase

## Diretrizes de Mensagem de Commits

Para **mensagens mais legíveis** e fáceis de seguir ao examinar o **histórico do projeto**.

### Formato da mensagem de commits

Cada mensagem de commit consiste em um **cabeçalho**, um **corpo** e um **rodapé**. O cabeçalho tem um formato especial que inclui um **tipo**, um **escopo** e um **assunto**:

```
<type>(<scope>): <subject>
<BLANK LINE>
<body>
<BLANK LINE>
<footer>
```

O **cabeçalho** é obrigatório e o **escopo** do cabeçalho é opcional.

Qualquer linha da mensagem de confirmação não pode ter mais de 100 caracteres! Isso permite que a mensagem seja mais fácil de ler no GitHub, bem como em várias ferramentas git.

```
docs(changelog): update changelog to beta.5
```
```
fix(release): need to depend on latest rxjs and zone.js

The version in our package.json gets copied to the one we publish, and users need the latest of these.
```

### Reverter
Se o commit reverter um commit anterior, ele deve começar com `revert: `, seguido pelo cabeçalho do commit revertido. No corpo, deve dizer: `This reverts commit <hash>.`, onde o hash é o SHA do commit que está sendo revertido.

### Tipo
Deve ser um dos seguintes:

* **build**: Mudanças que afetam o sistema de build ou dependências externas (escopos de exemplo: gulp, broccoli, npm)
* **docs**: Alterações apenas na documentação
* **feat**: Um novo recurso
* **fix**: Uma correção de bug
* **perf**: Uma mudança de código que melhora o desempenho
* **refactor**: Uma alteração de código que não corrige um bug nem adiciona um recurso
* **style**: Alterações que não afetam o significado do código (espaço em branco, formatação, ponto e vírgula ausente, etc)
* **test**: Adicionar testes ausentes ou corrigir testes existentes

### Escopo
Um escopo deve consistir em um substantivo que descreve uma seção da base de código entre parênteses.

### Assunto
O assunto contém uma descrição sucinta da mudança:

* não coloque a primeira letra em maiúscula
* sem ponto (.) no final

### Corpo
O corpo deve incluir a motivação para a mudança e contrastar isso com o comportamento anterior.

### Rodapé
O rodapé deve conter qualquer informação sobre **Breaking Changes**.

**Breaking Changes** deve começar com a palavra `BREAKING CHANGE:` com um espaço ou duas novas linhas. O resto da mensagem de confirmação é então usada para isso.
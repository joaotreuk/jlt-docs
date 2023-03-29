CurrencyEdit

Propriedades:
  - DisplayFormat: Formatação do valor, podesse por exemplo remover o pré texto de valor (R$);
  - Font: Gerencia a fonte do texto (tamanho, tipo da fonte, se é negrito, cor, se é sublinhado ou riscado);
  - Name: Nome identificador, exemplo: cetValor;
  - ParentColor: Deixa o campo mais escuro para simbolizar que o mesmo é apenas para leitura;
  - ReadOnly: Define se o usuário pode apenas ler o valor;
  - TabOrder: Order de definição de foco ao precionar a tecla "Tab";
  - TabStop: Ao precionar a tecla "Tab" este elemento é pulado;
  - Value: valor que o usuário define (campo float);

Métodos:
  - .SetFocus -> Define o foco para este elemento;

Eventos:
  - OnEnter: Chamado quando o elemento recebe o foco;
  - OnExit: Chamado quando o elemento perde o foco, usando TAB, ENTER, ou clicando em outro elemento;
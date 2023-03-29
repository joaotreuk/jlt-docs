Button

Propriedades:
  - Anchors: Lista de orientações que o botão vai seguir quando a tela é redimensionalizada;
    - akLeft: Se for verdadeiro o botão vai se orientando para a esquerda conforme a tela é redimensionalizada;
    - akTop: Cima;
    - akRight: Direita;
    - akBottom: Baixo;
  - Caption: Nome que é exibido;
    - & Adiciona atalho, quando aperta CTRL + a letra do atalho clica no botão, por exemplo o Caption é "&Salvar" então adiciona um atalho CTRL + S para o botão;
  - Enabled: Se é possível clicar no botão ou não, padrão: true;
  - Name: Nome identificador, exemplo: btnPesquisar;
  - TabOrder: Order de definição de foco ao precionar a tecla "Tab";
  - TabStop: Ao precionar a tecla "Tab" este elemento é pulado;
  - Tag: Numérico sem funcionalidade, aonde é possível adicionar uma funcionalidade desejada, como por exemplo definir se um campo é obrigatório ou não;
  - Visible: Se mostra o botão ou não;
  - Width: Largura.

Métodos:
  - .OnClick -> Chamado ao clicar;
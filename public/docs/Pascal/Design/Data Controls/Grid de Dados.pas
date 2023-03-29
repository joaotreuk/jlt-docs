DBGrid

Propriedades:
  - Align: Posição em que o componente ficará em relação ao seu elemento pai:
    - alBottom: Deixa este elemento no rodapé do elemento pai;
    - alClient: Faz ele se expandir o máximo possível;
    - alTop: Deixa este elemento no cabeçalho do elemento pai;
  - DataSource: Um elemento de base de dados - DataSource;
  - Name: Nome identificador, exemplo: gListagem.
  - Options: Lista de opções:
    - dgAlwaysShowSelection: Se Sempre mostra o item selecionado, padrão: false;
    - dgConfirmDelete: Se permite o usuário excluir um item da Grid, padrão: true;
    - dgEditing: Se permite o usuário editar um item da Grid, padrão: true;
    - dgRowLines: Se Mostra ou não as linhas que separam os itens;
    - dgRowSelect: Se ao selecionar um item seleciona a linha inteira junto, padrão: false;
    - dgTitleClick: Desabilitar;
    - dgTitleHotTrack: Desabilitar;

Métodos:
  - .DefaultDrawDataCell(Rect, TDBGrid(Sender).columns[datacol].field, // Passa o campo da coluna State);
  - .SetFocus -> Define o foco para este elemento;

Eventos:
  - OnDblClick: Quando é clicado duas vezes em uma célula;
  - OnDrawColumnCell: Chamado quando uma célula da coluna for desenhada;
    - DataCol: Integer -> Número da coluna;
    - Column: TColumn -> Coluna;
    - No final do evento é chamado o método abaixo para:
      - TDBGrid(Sender).DefaultDrawDataCell(Rect, TDBGrid(Sender).columns[datacol].field, State);
        - TDBGrid(Sender).columns[datacol].field: Passa o campo da coluna;
  - OnKeyDown: Chamado ao apertar uma tecla, paramêtros:
    - Key: Número identificador da tecla precionada;
    - Shift: Tecla auxiliar precionada;
      - Será igual a "[ssCtrl]" se foi precionado a tecla CTRL;
  - OnTitleClick: Quando é clicado no cabeçalho de uma coluna;

Funcionalidades:
  - Column Editor (Clicar com o botão direito): Manipular as colunas;
    - Add: Adicionar nova coluna;
    - Add All Fiels: Adicionar todas colunas em consideração do DataSource.

-------------------- // --------------------

Column - Elemento de coluna da grid

Propriedades:
  - Field: ;
  - Visible: ;

Canvas.Font.Color := clWhite; // Cor da fonte
Canvas.Brush.Color := clRed; // Cor de fundo
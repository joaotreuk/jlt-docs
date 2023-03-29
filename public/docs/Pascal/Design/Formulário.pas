Criar formulário:
1. Na barra no topo ir em: File -> New -> VCL Form - Delphi
2. Então salvar o formulário;
3. Na barra do topo ir em: Project -> Options -> Application -> Forms;
4. Passar o formulário para o lado do "Available forms" e clicar em "Save";
5. Deixar como "Auto-create forms" apenas o formulário da página principal.

Criar formulário com herança de outro formulário:
1. Na barra do topo ir em: File -> New -> Other -> Inheritable Items;
2. Escolher o formulário em que este novo formulário receberá a herança e confirmar;
3. Na barra do topo ir em: Project -> Options -> Application -> Forms;
4. Passar o formulário para o lado do "Available forms" e clicar em "Save";
5. Deixar como "Auto-create forms" apenas o formulário da página principal.

Propriedades:
  - BorderIcons: Ícones a serem mostrados no cabeçalho do formulário;
    - biMaximize: Se mostra o ícone de maximizar o aplicativo ou não;
    - biMinimize: Se mostra o ícone de minimizar o aplicativo ou não;
  - BorderStyle: A borda ao redor que define o estilo da tela;
    - bsDialog: Mostra apenas o botão de fechar;
    - bsNone: Não mostra borda e nem nenhum botão;
    - Outras opções incluem mostrar tudo e se a tela pode ser esticada ou não;
  - Caption: Nome que aparece no topo da formulário;
  - Name: Nome identificador, exemplo: frmExemplo;
  - Position: Posição inicial da tela;
    - poDesktopCenter: Centro da área de trabalho, se tiver mais de uma tela ficará no meio delas;
    - poSreenCenter: Centro da tela;
  - WindowState: Se a tela do formulário começa maximixada, no tamanho padrão ou minimizada.

Métodos:
  - .ComponentCount -> Retorna a quantidade de componentes do formulário;
  - .Components -> Lista de componentes do formulário, acessar um componente: Components[0];
  - .Create(Application) -> No método construtor se passa a aplicação;
  - .Free -> Fecha a tela e libera o formulário da memória;
  - .Refresh -> Atualiza a tela, aplicando as mudanças feitas em código para os elementos do formulário;
  - .Release -> Após um formulário modal for fechado limpa o mesmo da memória;
  - .Show -> Mostra a tela do formulário, continua executando as linhas abaixo diferente do showmodal que espera a modal ser fechada antes;
  - .ShowModal -> Chama uma página de formulário que aparecerá sobre o formulário atual;
  

Eventos:
  - OnClose: Quando a tela do formulário é fechada;
  - OnCloseQuery: Chamado antes da tela fechar, afim de verificar se a mesma pode ser fechada ou não, paramêtros:
    - Sender;
    - var CanClose: Se a tela pode ser fechada ou não;
  - OnCreate: Quando o formulário está sendo criado, antes de aparecer para o usuário;
  - OnShow: Quando o formulário aparece;
// Declarando esta unit
unit uProduto;

// Importa��es
interface
uses // Importa��es na interface podem ser usadas como componentes, importando componentes, formul�rios ou classes
  System.Classes, Vcl.Dialogs;
implementation
uses // Importando componentes apenas para o "implementation", usando os mesmos apenas no c�digo back-end
  Vcl.Controls;

// Elemento obrigat�rio para o funcionamento das fun��es
{$R *.dfm}

// Declara��o da classe
type
  // Tipo da classe
  TProduto = class 
  TfrmPrincipal = class(TForm); // Herda o cont�udo de outra classe ou formul�rio

    // Declarando um procedimento de um evento
    procedure menuFecharClick(Sender: TObject);

  // Vari�veis, m�todos e atributos privados
  private

    FID: Integer;
    function getCodigo: Integer;
    procedure setCodigo(const Value: Integer);
    procedure Nome(); // Declarando um procedimento que n�o � de um evento

  // M�todos e atributos p�blicos, vari�veis p�blicas aparecem para os herdeiros e para as units que usam est� classe
  public

    // Declarando os m�todos construtor e destruidor
    constructor Create;
    destructor Destroy; override;

  // Vari�veis p�blicas utilizadas para as propriedades
  published 

    // GET e SET simplificados
    property id: Integer read FID write FID; 

  end;

// M�todos construtor e destruidor
constructor TCategoria.Create; begin end;
destructor TCategoria.Destroy; begin inherited; end;

// Fun��es e procedimentos de GET e SET
function TCategoria.getCodigo: String; begin Result := Self.FID; end;
procedure TCategoria.setCodigo(const Value: String); begin Self.FID := Value; end;

end.
// Declarando esta unit
unit uProduto;

// Importações
interface
uses // Importações na interface podem ser usadas como componentes, importando componentes, formulários ou classes
  System.Classes, Vcl.Dialogs;
implementation
uses // Importando componentes apenas para o "implementation", usando os mesmos apenas no código back-end
  Vcl.Controls;

// Elemento obrigatório para o funcionamento das funções
{$R *.dfm}

// Declaração da classe
type
  // Tipo da classe
  TProduto = class 
  TfrmPrincipal = class(TForm); // Herda o contéudo de outra classe ou formulário

    // Declarando um procedimento de um evento
    procedure menuFecharClick(Sender: TObject);

  // Variáveis, métodos e atributos privados
  private

    FID: Integer;
    function getCodigo: Integer;
    procedure setCodigo(const Value: Integer);
    procedure Nome(); // Declarando um procedimento que não é de um evento

  // Métodos e atributos públicos, variáveis públicas aparecem para os herdeiros e para as units que usam está classe
  public

    // Declarando os métodos construtor e destruidor
    constructor Create;
    destructor Destroy; override;

  // Variáveis públicas utilizadas para as propriedades
  published 

    // GET e SET simplificados
    property id: Integer read FID write FID; 

  end;

// Métodos construtor e destruidor
constructor TCategoria.Create; begin end;
destructor TCategoria.Destroy; begin inherited; end;

// Funções e procedimentos de GET e SET
function TCategoria.getCodigo: String; begin Result := Self.FID; end;
procedure TCategoria.setCodigo(const Value: String); begin Self.FID := Value; end;

end.
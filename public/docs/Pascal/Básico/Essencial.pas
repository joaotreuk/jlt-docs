// Vari�veis
var variavel // Uma vari�vel que pode ser alterada e no caso de uma fun��o ou procedimento mudan�as nela afetam a vari�vel que foi passada por um par�metro
const variavel // Vari�vel que n�o pode ter seu valor alterado

// Cria um elemento (um formul�rio, um Data Module, etc.) sobre um formul�rio
dtmConexao := TdtmConexao.Create(
  // Formul�rio em que o elemento ser� criado
  Self // Self equivale ao "this" em outras linguagens, utiliza o formul�rio ou unit atual
);

// Mostra uma mensagem de alerta para o usu�rio, o sistema espera confirmar a mensagem antes de executar as pr�ximas linhas
ShowMessage('Ol�');
MessageDlg( // Mensagem costumizada
  '', // Texto da mensagem
  mtInformation, // Tipo da modal, exemplo: mtInformation, mtWarning, mtError
  [ // Lista de bot�es que seram exibidos
    mbOK, // Bot�o "OK", a mensagem retorna o bot�o apertado, exemplo: mbOK
    mbYes, 
    mbNo
  ], 
  0
);

// Aguarda um tempo em milissegundos antes de executar a pr�xima linha
Sleep(1000);

// � o equivalente ao null, um valor nulo
nil 

// Fechar a janela atual
Close;

// Vari�veis
planilha: Variant; // Vari�vel de tipo gen�rico
componente is TLabeledEdit // Verifica se uma vari�vel � de um tipo determinado
Assigned(oVariavel) // Verifica se uma vari�vel est� atribuida
variavel := Unassigned; // Define uma vari�vel como n�o atribuida
FreeAndNil(variavel); // Remover uma vari�vel da mem�ria

// Usar um elemento para setar diversos atributos de uma vez s�
with elemento do begin 
  atributo := valor;
end;

// Operadores
1 = 1 // Igual
1 <> 2 // Diferente
1 < 2 // Menor que
not Codicao // Nega uma condi��o, equivalente a ! em outras linguagens

// Condi��es
if 1 = 1 then begin ShowMessage('V') end; // Se
if (False) and (True) then ShowMessage('F') // As condi��es precisam estar entre () quando se utiliza "and", "or" ou "not"
if True then ShowMessage('F') else if 1 <> 2 then ShowMessage('V'); // Se encadeado e simplificado
if (True) or (False) then ShowMessage('V') else ShowMessage('F') // Se n�o

// La�os
for indice := 0 to 10 do begin end; // Ocorre enquanto 0 for menor que 10, aumentando de 1 em 1
for indice := 5 downto 1 do begin end; // La�o For reverso com decremento de 1 em 1
for indice := 1 to 20 do ShowMessage('V'); // For de uma linha s�
for item in lista do ShowMessage('A'); // For que percorre os itens em uma lista
while Codicao do begin ShowMessage('A') end; // Repete enquanto a condi��o for verdadeira
while Codicao do ShowMessage('A'); // While de uma linha s�
Break; // Quebra o la�o

// Try catch
try except end;
try finally end; // try e finally

{
  Coment�rio de v�rias linhas
}

{$Region 'Minhas Fun��es'}
// Cria um bloco que pode ter o c�digo minimizado na IDE do Delphi
{$EndRegion}
// Variáveis
var variavel // Uma variável que pode ser alterada e no caso de uma função ou procedimento mudanças nela afetam a variável que foi passada por um parâmetro
const variavel // Variável que não pode ter seu valor alterado

// Cria um elemento (um formulário, um Data Module, etc.) sobre um formulário
dtmConexao := TdtmConexao.Create(
  // Formulário em que o elemento será criado
  Self // Self equivale ao "this" em outras linguagens, utiliza o formulário ou unit atual
);

// Mostra uma mensagem de alerta para o usuário, o sistema espera confirmar a mensagem antes de executar as próximas linhas
ShowMessage('Olá');
MessageDlg( // Mensagem costumizada
  '', // Texto da mensagem
  mtInformation, // Tipo da modal, exemplo: mtInformation, mtWarning, mtError
  [ // Lista de botões que seram exibidos
    mbOK, // Botão "OK", a mensagem retorna o botão apertado, exemplo: mbOK
    mbYes, 
    mbNo
  ], 
  0
);

// Aguarda um tempo em milissegundos antes de executar a próxima linha
Sleep(1000);

// É o equivalente ao null, um valor nulo
nil 

// Fechar a janela atual
Close;

// Variáveis
planilha: Variant; // Variável de tipo genérico
componente is TLabeledEdit // Verifica se uma variável é de um tipo determinado
Assigned(oVariavel) // Verifica se uma variável está atribuida
variavel := Unassigned; // Define uma variável como não atribuida
FreeAndNil(variavel); // Remover uma variável da memória

// Usar um elemento para setar diversos atributos de uma vez só
with elemento do begin 
  atributo := valor;
end;

// Operadores
1 = 1 // Igual
1 <> 2 // Diferente
1 < 2 // Menor que
not Codicao // Nega uma condição, equivalente a ! em outras linguagens

// Condições
if 1 = 1 then begin ShowMessage('V') end; // Se
if (False) and (True) then ShowMessage('F') // As condições precisam estar entre () quando se utiliza "and", "or" ou "not"
if True then ShowMessage('F') else if 1 <> 2 then ShowMessage('V'); // Se encadeado e simplificado
if (True) or (False) then ShowMessage('V') else ShowMessage('F') // Se não

// Laços
for indice := 0 to 10 do begin end; // Ocorre enquanto 0 for menor que 10, aumentando de 1 em 1
for indice := 5 downto 1 do begin end; // Laço For reverso com decremento de 1 em 1
for indice := 1 to 20 do ShowMessage('V'); // For de uma linha só
for item in lista do ShowMessage('A'); // For que percorre os itens em uma lista
while Codicao do begin ShowMessage('A') end; // Repete enquanto a condição for verdadeira
while Codicao do ShowMessage('A'); // While de uma linha só
Break; // Quebra o laço

// Try catch
try except end;
try finally end; // try e finally

{
  Comentário de várias linhas
}

{$Region 'Minhas Funções'}
// Cria um bloco que pode ter o código minimizado na IDE do Delphi
{$EndRegion}
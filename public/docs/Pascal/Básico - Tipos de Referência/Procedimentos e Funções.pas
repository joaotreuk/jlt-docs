// Procedimentos
// Procedimentos n�o retornam nada
procedure NomeProcedimento; begin {codes...} end;

// Fun��es
// Fun��es tem retorno
function NomeFuncao: Integer; begin Result := 1; end;
Result := 1; // Define o valor a ser retornado, a fun��o continua mesmo ap�s definir o Result, podendo alterar valor do mesmo no processo

// Tipos de m�todos
class function Metodo: String; static; // M�todo est�tico, pode ser utilizado sem criar o objeto da classe
function Metodo(parametro: Double): Boolean; virtual; // Virtual permite que um m�todo seja reescrito em outra tela
procedure Metodo: Boolean; override; // Override reescreve um m�todo virtual de uma classe pai

// M�todos de formul�rios
procedure TnomeFormulario.NomeProcedimento(Sender: TObject); // Sender � o pr�prio componente que chamou a fun��o
inherited; // Executa o c�digo da classe da heran�a, pode-se adicionar c�digo antes ou depois do mesmo
TElemento(Sender); // Utilizando a classe objeto do elemento Sender

// Local onde s�o declaradas as vari�veis que seram usadas pelo procedimento/fun��o
Var
  texto: String;
  numero, numero2: Integer; // Declarando mais de uma vari�vel do mesmo tipo

{ -------------------- PAR�METROS -------------------- }

// Passando par�metros para o m�todo
procedure NomeMetodo(parametro: String; parametro2: Char);

// O valor padr�o para um par�metro opcional fica apenas na declara��o do m�todo
procedure NomeMetodo(parametro: Integer = 0); 

// O par�metro pode ou n�o ser atribu�do e retornado para a vari�vel passada na chamada do m�todo
// O valor passado no par�metro pode ser usado ou n�o
procedure NomeMetodo(var parametro: Char);

// O par�metro ser� atribu�do e retornado para a vari�vel passada na chamada do m�todo
// O valor da vari�vel passada n�o deve ser usado, o compilador pode at� permitir que seja mas n�o � uma boa pr�tica
procedure NomeMetodo(out parametro: Char);
procedure NomeMetodo(out parametro); // Par�metros out n�o precisam ser tipados, o tipo da vari�vel passada na chamada ser� automaticamente definido

// O par�metro � constante, ou seja n�o pode ter seu valor alterado
procedure NomeMetodo(const parametro: Char);
procedure NomeMetodo(const parametro); // Igual o out tamb�m n�o precisa ser tipado

{ -------------------- BLOCOS DE COMANDO -------------------- }

// Bloco de comandos de um procedimento/fun��o
begin end; // Definem o in�cio e fim do bloco de comandos do procedimento/fun��o

// Quebra o bloco de comando do m�todo
// Os c�digos for� do m�todo continuaram sendo executados normalmente
Exit;
Exit(2); // Em fun��es pode-se retornar um valor

// Quebra o bloco de comando do m�todo e tamb�m ger� um erro silencioso que far� todo o processo ser interrompido
// � poss�vel pegar este erro gerando se o Abort estiver dentro de um try except, do contr�rio o erro n�o ser� mostrado
Abort;
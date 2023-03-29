// Procedimentos
// Procedimentos não retornam nada
procedure NomeProcedimento; begin {codes...} end;

// Funções
// Funções tem retorno
function NomeFuncao: Integer; begin Result := 1; end;
Result := 1; // Define o valor a ser retornado, a função continua mesmo após definir o Result, podendo alterar valor do mesmo no processo

// Tipos de métodos
class function Metodo: String; static; // Método estático, pode ser utilizado sem criar o objeto da classe
function Metodo(parametro: Double): Boolean; virtual; // Virtual permite que um método seja reescrito em outra tela
procedure Metodo: Boolean; override; // Override reescreve um método virtual de uma classe pai

// Métodos de formulários
procedure TnomeFormulario.NomeProcedimento(Sender: TObject); // Sender é o próprio componente que chamou a função
inherited; // Executa o código da classe da herança, pode-se adicionar código antes ou depois do mesmo
TElemento(Sender); // Utilizando a classe objeto do elemento Sender

// Local onde são declaradas as variáveis que seram usadas pelo procedimento/função
Var
  texto: String;
  numero, numero2: Integer; // Declarando mais de uma variável do mesmo tipo

{ -------------------- PARÂMETROS -------------------- }

// Passando parâmetros para o método
procedure NomeMetodo(parametro: String; parametro2: Char);

// O valor padrão para um parâmetro opcional fica apenas na declaração do método
procedure NomeMetodo(parametro: Integer = 0); 

// O parâmetro pode ou não ser atribuído e retornado para a variável passada na chamada do método
// O valor passado no parâmetro pode ser usado ou não
procedure NomeMetodo(var parametro: Char);

// O parâmetro será atribuído e retornado para a variável passada na chamada do método
// O valor da variável passada não deve ser usado, o compilador pode até permitir que seja mas não é uma boa prática
procedure NomeMetodo(out parametro: Char);
procedure NomeMetodo(out parametro); // Parâmetros out não precisam ser tipados, o tipo da variável passada na chamada será automaticamente definido

// O parâmetro é constante, ou seja não pode ter seu valor alterado
procedure NomeMetodo(const parametro: Char);
procedure NomeMetodo(const parametro); // Igual o out também não precisa ser tipado

{ -------------------- BLOCOS DE COMANDO -------------------- }

// Bloco de comandos de um procedimento/função
begin end; // Definem o início e fim do bloco de comandos do procedimento/função

// Quebra o bloco de comando do método
// Os códigos forá do método continuaram sendo executados normalmente
Exit;
Exit(2); // Em funções pode-se retornar um valor

// Quebra o bloco de comando do método e também gerá um erro silencioso que fará todo o processo ser interrompido
// É possível pegar este erro gerando se o Abort estiver dentro de um try except, do contrário o erro não será mostrado
Abort;
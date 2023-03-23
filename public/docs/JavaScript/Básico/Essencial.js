// Variáveis
var // Variável de escopo global
let // Variável de escopo de bloco
const pi = 3.141592653589793; // Variável de apenas leitura

// Exemplo de let e var
var a = 5, b = 10;
if (a === 5) {
  let a = 4 // O escopo é dentro do bloco if
  var b = 1 // O escopo é dentro da função
  console.log(a, b)  // 4, 1
} 
console.log(a, b) // 5, 1

// Atribuição
valor = false || 'texto'; // Se a primeira variável retornar falso então é setado a segunda variável
valor = null ?? 'texto se variável for nula'; // Se um valor for nulo ou não definido então é retornado o segundo valor
valor = valor?.meuMetodo(); // Se o valor for nulo ou não definido então é retornado o mesmo, do contrário o método é executado retornado seu valor
valor = variavel.meuMetodo?.(); // Se um método não existir retorna não definido

// Tipos de arquivos
//<script src="Arquivo.js"></script> // Tipo normal, nele é possível ligar diretamente eventos HTML a funções JavaScript
//<script type="module" src="Arquivo.js"></script> // Tipo modulo, onde é possível fazer importações e exportações

// Operadores
a = 1 // A variável recebe o valor
1 == 1 // Se o valor for igual
1 === 1 // Se o valor e o tipo forem iguais
1 == 1 ? "Verdade" : "Mentira"; // if simplificado

// Tentar executar um código, reprimindo o erro
try { } catch { }
try { } catch (e) { console.log(e); } // Obtendo a exceção

// Loops
for (let i = 0; i <= 10; i++) {}
for (let i = 10; i >= 0; i--) funcao() // Laço "for" simplificado
while (1 == 1) { }
do { } while (1 == 1)

// Switch
switch (valor) {
  case 1:
    console.log(1);
    break;
  case 2:
  case 3:
    console.log(0);
    break;
  default:
    console.log('Resultado padrão');
}

// Quebra de loop / switch
continue // Pula uma interação
break // Pula o bloco (loop/switch)

// Funções
function MinhaFuncao() {}
() => { if(1 == 1) { return 1 } return 2 } // Função simplificada
() => "Retorno"; // Retorno único, sem paramêtros
a => "Retorno " + a; // Passando um paramêtro
(a, b) => a + b; // Passando mais de um paramêtro
() => ({Campo: 1}) // Retornando um objeto
variavel = MinhaFuncao; // Setando uma função para uma variável

// Importação e exportação
export function MinhaFuncao() {} // Exportando uma função ou classe
export default function MinhaFuncao() {} // Exportando e definindo como função padrão
export { MinhaClasse, MinhaFuncao }; // Exportando mais de uma função ou classe
import { MinhaClasse } from "./ArquivoJavaScript"; // Importando
import MinhaFuncao from "./ArquivoJavaScript"; // Importando a exportação padrão
import MinhaClasse, { MinhaClasse, MinhaFuncao } from "./ArquivoJavaScript"; // Importando o padrão e mais outras funções
import * as Arquivo from './ArquivoJavaScript'; // Importando todas as exportações de um arquivo, então as funções são usadas como: Arquivo.MinhaFuncao
import './MeuArquivo.css'; // Importando arquivos .css

// Gerar um erro que para o resto da execução
throw new Error();
throw new Error("Something went badly wrong!"); // Passando uma mensagem de erro

// Labels
Label: {
  break Label; // Quebrando uma label
}
Label: funcao() // Label simples, sem {}

// Regiões
//#region Funções para exclusão
//#endregion
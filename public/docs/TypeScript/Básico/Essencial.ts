// Declarando variáveis
let variavel; // Por padrão a variável é do tipo "any" que é um objeto não definido
let variavel2: number; // Definindo o tipo da variável
let variavel3 = "Exemplo"; // Ao setar e ao mesmo tempo atribuir a variável é trivial definir o tipo
variavel = true; // Setando uma variável
variavel as File; // Setando a variável como um tipo

// Laços de repetição
for (let item of lista) {} // Laço que percorre cada item em uma lista
for (let indice in lista) {} // Laço que percorre pelo indice de cada item em uma lista

// Exportando e importando módulos
export class MinhaClasse {} // Exportando uma classe ou interface
import * as modulo from "./Caminho"; // Importar todas as classes de um arquivo/módulo
import { MinhaClasse, MinhaClasse2 } from './Caminho'; // Importar apenas uma ou mais classes

// Útil
switch (variavel) { case 'A': break; default: } // Switch case
//#region Região //#endregion

// Escreve uma mensagem no console do navegador
console.log("Exemplo");
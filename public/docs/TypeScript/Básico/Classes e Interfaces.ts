// Criando uma classe
class ClassePai {

    // Definindo uma propriedade
    mensagem: string;
    private propriedade: boolean; // Propriedade privada
    static propriedade: string; // Uma propriedade estática, que é acessada sem a construção do elemento
    readonly propriedade2 = ''; // Propriedade de apenas leitura
    
    // Método construtor
    constructor(mensagem: string) {
        this.mensagem = mensagem;
    }

    // Criando métodos get e set para uma variável, gerando a variável texto para manipulação e a Texto não
    Texto: string;
    get texto(): string { return this.Texto; }
    set texto(valor: string) { this.Texto = valor; }
    
    // Método
    metodo() {
        return this.mensagem;
    }
    metodo2(): void {} // Definindo um método sem retorno
}

// Utilizando a class
let minhaClasse = new ClassePai("Exemplo");

// Criando uma interface
interface MinhaInterface {
    id: number; // Propriedade obrigatória
    data?: Date; // Define que uma propriedade pode ser nula
    isAcceptable(s: string): boolean;
}

// Implementação e herança
class Exemplo extends ClassePai {} // A classe recebe uma herança da classe pa
class Exemplo2 implements MinhaInterface {} // Implementa uma interface para a classe

// Métodos
get metodo(): number { return 1; } // Criando um método get
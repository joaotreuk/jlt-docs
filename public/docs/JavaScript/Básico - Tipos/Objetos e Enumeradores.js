// Enumeradores, objetos são usados como enumeradores
const Cor = {
  Azul: 0,
  Vermelho: 1
};

// Objetos
let ClassePai = {
  lastName: "Doe",
  // Por padrão os métodos devem começar com letra minúsculas
  metodo: function() {
    return this.firstName + " " + this.lastName;
  }
};

let ClassePai2 = {
  metodo: function(city, country) {
    return this.firstName + " " + this.Idade + "," + city + "," + country;
  }
};

let ObjetoFilho = {
  firstName: "John",
  Idade: 20
};

// Com call é possível reaproveitar métodos para diversas classes
ClassePai.metodo.call(ObjetoFilho);
ClassePai2.metodo.call(ObjetoFilho, "Cidade", "Brasil"); // Pode-se também passar argumentos para a função

// Adicionando ou atualizando um atributo de um objeto
objeto["Nome"] = "Joao";
objeto.Nome = "Joao";

// Verifica se um objeto possui uma propriedade
"geolocation" in navigator;

// Retorna se um tipo de objeto tem em seu protótipo a função construtora que criou a variável
meuTexto instanceof String;
MeuObjeto.prototype instanceof Object; // Verificar se o protótipo de um objeto foi construído a partir de outro objeto
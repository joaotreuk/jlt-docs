let meuObjeto = { Nome: 'João', Idade: 20 }

// Converte um objeto para uma string JSON
JSON.stringify(meuObjeto)

// Converte uma string JSON para um objeto JavaScript ou para uma Array JavaScript
JSON.parse('{"Nome":"Joao"}')
JSON.parse(texto, (chave, valor) => { // Função opcional que percorre cada atributo do objeto
    return chave == "DataNascimento" ? new Date(valor) : valor
})
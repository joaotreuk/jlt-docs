//<script src="~/Scripts/cleave.min.js"></script>
//<script src="~/Scripts/cleave-phone.br.js"></script> -- Opcional, para caso se queira usar um formato padrão de telefone do Brasil

new Cleave('#ID', {
    delimiters: ['(', ') ', ' - '], // Aplica delimitadores, ex: (42) 91111 - 1111
    blocks: [0, 2, 5, 4], // Quantidade de caracteres entre cada delimitador
    uppercase: true, // Define todas as letras como maiusculas
    prefix: 'PREFIX' // Adiciona um prefixo para antes do texto
})

var cleave = new Cleave('.Classe', {
    phone: true, // Aplica uma formatação de telefone
    phoneRegionCode: 'BR' // Define a região do telefone como Brasil
})

new Cleave('.input-element', {
    creditCard: true, // Aplica uma formatação de cartão de crédito
    onCreditCardTypeChanged: Tipo => { // É possivel definar a marca do cartão pelas iniciais
        // update UI ...
    }
})

new Cleave('.input-element', {
    date: true,
    datePattern: ['d', 'm', 'Y'] // Formatando data
})

new Cleave('.input-element', {
    time: true,
    timePattern: ['h', 'm', 's'] // Formatando tempo
})

new Cleave('.input-element', {
    numeral: true,
    numeralThousandsGroupStyle: 'thousand' // Formatando númerais
})
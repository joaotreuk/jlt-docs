// Métodos
let resultado = input.checkValidity(); // Retorna se o elemento (form, input) está válidado ou não, disparando os eventos CSS invalid e valid
input.setCustomValidity('Tudo errado'); // Define uma mensagem customizada de validação, passar uma string vazia para não aplicar mensagem customizada

// Propriedades
let validacao = input.validity; // Objeto com informações de validação
let mensagem = input.validationMessage; // Mensagem de validação definida pelo Browser
let vaiValidar = input.willValidate; // Diz se é possível tentar validar o input ou não

// Objeto de validação
let aplica = validacao.customError; // Diz se foi aplicada uma mensagem customizada de validação ou não
let encaixa = validacao.patternMismatch; // Diz se o valor do elemento se encaixa perante seu atributo 'pattern' ou não
let ultrapassa = validacao.rangeOverflow; // Diz se o valor do elemento ultrapassa o valor do atributo 'max' ou não
let menor = validacao.rangeUnderflow; // Diz se o valor do elemento é menor que o valor do atributo 'min' ou não
let invalido = validacao.stepMismatch; // Diz se o valor do elemento é inválido perante o atributo 'step' ou não
ultrapassa = validacao.tooLong; // Diz se o valor do elemento ultrapassa o tamanho para o atributo 'maxLength' ou não
invalido = validacao.typeMismatch; // Diz se o valor do elemento é inválido perante o 'type' do input ou não
let vazio = validacao.valueMissing; // Diz se um elemento com o atributo 'required' está vazio ou não
let valido = validacao.valid; // Diz se o elemento está valido ou não
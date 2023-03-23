// Objeto de data
let Data = new Date() // Define a data atual
Data = new Date(2019, 10, 16) // Define a data pelos pedaços
Data.getFullYear() // Pega o ano atual

// Objeto TimeStamp, um objeto de data com o valor em milissegundos
let timeStamp = 1603307989936

Elemento.value = "1999-12-24" // Define o valor de um input type date
Elemento.valueAsDate = Dia // Define o valor de um input type date apartir de uma variável Date()

// Adiciona a hora e minuto atual para um input type = time
TimeInput.value = addZero(Dia.getHours()) + ":" + addZero(Dia.getMinutes())
function addZero(Valor) // Adicona 0 para minutos, segundos e horas
{
    if (Valor < 10) {
        Valor = "0" + Valor
    }

    return Valor
}

// Verifica se dia é sabado ou domingo
myDate.getDay() % 6

// Sleep function
await sleep(200)
function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms))
}

// Converte minutos para horas
minutesToStr(180)
function minutesToStr(minutes) {
    sign = '';
    if (minutes < 0) {
        sign = '-';
    }

    hours = leftPad(Math.floor(Math.abs(minutes) / 60))
    minutes = leftPad(Math.abs(minutes) % 60)

    return sign + hours + ':' + minutes

} 

function leftPad(number) {
    return ((number < 10 && number >= 0) ? '0' : '') + number
} 

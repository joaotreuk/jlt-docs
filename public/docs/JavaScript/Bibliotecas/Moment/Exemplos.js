// <script src="moment/moment.min.js"></script>
// <script src="moment/locale/pt-br.js"></script> // Utilizado para traduzir textos para pt-br
import moment from 'moment';
import 'moment/locale/pt-br';

// Criando um objeto moment
moment() // Objeto da data e hora atuais
moment(objetoData) // Cria um moment a partir de um objeto de data javascript
moment("/Date(1198908717056-0700)/") // Criar um objeto Moment a partir de uma string de um objeto Datetime C#
moment( // Objeto moment para uma data específica
    "12-25-1995", // Data específica
    "MM-DD-YYYY" // Formato da data passada
) 

// Converter um objeto moment para um objeto Date
moment().toDate()

// Formata a data
moment().format('DD/MM/YYYY') // Exemplo: 24/12/2019
moment().format("HH:mm:ss") // Exemplo: 12:50:45
moment().format('MMMM') // Pega o nome do mês, ex: Dezembro
moment().format('dddd') // Pega o nome do dia da semana, ex: Sábado

// Faz objeto moment alterar sua data para o início ou final de um paramêtro
moment().startOf('day') // Início do dia
moment().startOf('month') // Primeiro dia do mês
moment().startOf('week') // Primeiro dia da semana
moment().endOf('year') // Último dia do ano

// Pega o dia da semana de um objeto moment
moment().day() // Exemplo: 1 = Segunda, 0 = Domingo

// Pega a diferença entre dois objetos moment
momentFinal.diff(momentInicial) // Por padrão pega a diferença em milissegundos
momentFinal.diff(momentInicial, 'minute') // Diferença em minutos

// Acrescenta um período a um objeto moment
moment().add(1, 'hour') // Acrescenta uma hora
moment().add(1, 'week') // Acrescenta uma semana
moment().add(5, 'minute') // Acrescenta 5 minutos

// Subtraí um período de um objeto moment
moment().subtract(1, 'days') // Subtraí um dia
moment().subtract(1, 'month') // Subtraí um mês

// Verificações
let condicao = momento >= momento2; // É possível usar condições diretamente entre objetos Moment
moment().isLeapYear() // Verifica se o ano é bissexto
objetoMoment.isBefore(objetoMoment2) // Verifica se a primeira data é menor que a segunda
objetoMoment.isBefore('2010-12-31', 'year') // Verifica se o ano da primeria data é menor que o data segunda
objetoMoment.isAfter(objetoMoment2) // Verifica se a primeira data é maior que a segunda
objetoMoment.isAfter('2010-12-31', 'year') // Verifica se o ano da primeria data é maior que o data segunda
objetoMoment.isSame('2010-10-20') // Verifica se as datas são iguais
objetoMoment.isSame('2010-10-20', 'year') // Verifica se os anos das datas são iguais
objetoMoment.isSameOrBefore('2010-10-21') // Verifica se a primeira data é menor ou igual a segunda data
objetoMoment.isSameOrAfter('2010-10-21') // Verifica se a primeira data é maior ou igual a segunda data
objetoMoment.isBetween( // Verifica se uma data está entre outras duas datas
    '2016-10-30', // Data inicial, pode se também usar objetos Moment
    '2016-12-30', // Data Final
    'year', // (Opcional) Período de comparação, no exemplo verificara se o ano do Moment está entre os anos das duas datas
    '(]' // (Opcional) Usar "(" para definir que incluí a data, usar '[' para definir que não incluí, o primeiro é para a data inicial e o outro para a data final
); 
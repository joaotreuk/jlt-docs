// <script src="dist/holidays.min.js"></script>
// <script src="dist/umd.min.js"></script>

hd = new Holidays()

// Pegar os paises, estados e regiões suportadas
hd.getCountries()
hd.getStates('BR')
hd.getRegions('BR', 'PR')

// Inicia a manipulação de feriados
hd.init('BR', 'PR', 'CU')
hd.init('BR', 'SC')
hd = new Holidays('US', 'la', 'no') // É possivél iniciar diretamente

// Pega todos feriados de 2019
hd.getHolidays(2019)

// Verifica se a data passada é feriado, respeitando o fuso horário
hd.isHoliday(new Date(2019, 2, 2)) // Carnaval, então retorna o objeto Holidays
hd.isHoliday(new Date(2016, 10, 24)) // Retorna false
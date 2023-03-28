-- Formatar uma data
SELECT FORMAT(MinhaData, 'dd/MM/yyyy') -- Formata uma data para um padrão passado, outro exemplo: 'HH:mm'
SELECT FORMAT(MinhaData, 'd') -- Usando o padrão do sistema
SELECT FORMAT(MinhaData, 'd', 'pt-br') -- Usando o padrão de uma cultura
SELECT FORMAT(MinhaData, 'D') -- Usando o padrão com nome detalhado
SELECT FORMAT(MinhaData, 'MMMM') -- Pegando o nome do mês

-- Obter data
SELECT CURRENT_TIMESTAMP -- Obtém a data atual
SELECT DATEADD(MONTH, 1, MinhaData) -- Obtém uma data somando de uma data passada
SELECT EOMONTH(MinhaData) -- Obtém a data do último dia do mês da data passada
SELECT GETDATE() -- Obtém a data atual do sistema de banco de dados
SELECT GETUTCDATE() -- Obtém a data UTC atual
SELECT SYSDATETIME() -- Obtém a data do SQL Server

-- Obter parte de uma data, representada por um número inteiro
SELECT DATEPART(HOUR, MinhaData) -- Obtém a hora
SELECT DATEPART(MONTH, MinhaData) -- Obtém o mês, exemplo: retorna 4 para abril
SELECT DATEPART(WEEKDAY, MinhaData) -- Obtém o dia da semana, exemplo: retorna 7 para sábado
SELECT DAY(MinhaData) -- Obtém o dia
SELECT MONTH(MinhaData) -- Obtém o mês
SELECT YEAR(MinhaData) -- Obtém o ano

-- Obter o nome da parte de uma data, representada por um texto
SELECT DATENAME(MONTH, MinhaData) -- Obtém o nome do mês, exemplo: retorna 'Abril'
SELECT DATENAME(WEEKDAY, MinhaData) -- Obtém o nome do dia da semana, exemplo: retorna 'Sábado'

-- Útil
SELECT ISDATE('2017-08-25') -- Verifica se valor é data

-- Criar data ou tempo por seus pedaços, usando números inteiros
SELECT DATEFROMPARTS(1999, 12, 24) -- Ano, Mês, Dia
SELECT TIMEFROMPARTS(14, 23, 44, 500, 3) -- Hora. Minuto. Segundo. Fração de segundo. Precisão da fração, ou seja a quantidade de casas após a vírgula (Máximo: 7)

-- Pega a diferença de duas datas em dias/minutos/horas
SELECT DATEDIFF(DAY, @DataInicial, @DataFinal)
SELECT DATEDIFF(MINUTE, @DataInicial, @DataFinal)
SELECT DATEDIFF(HOUR, @DataInicial, @DataFinal)
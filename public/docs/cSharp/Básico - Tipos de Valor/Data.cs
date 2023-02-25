// Declaração / Atribuição
DateTime? nulo = null; // DateTime que permite valores nulos
DateTime aniversario = new DateTime(1999, 12, 24); // Atribuir informando o ano/mês/dia
DateTime data = new DateTime(1999, 12, 24, 15, 30, 0); // Igual o anterior, porém acrescentando horas/minutos/segundos
DateTime hoje = DateTime.Today; // DateTime do dia atual
DateTime agora = DateTime.Now; // DateTime do dia e horas atuais

// Propriedades
int ano = data.Year; // Ano da data
int mes = data.Month; // Mês da data


/* -------------------- MÉTODOS -------------------- */

// Adicionar/subtrair datas
DateTime anteontem = data.AddDays(-2); // Adicionar/subtrair dias
DateTime proximoMes = data.AddMonths(1); // Adicionar/subtrair meses

// Obter o número de dias que um mês possui
int dias = DateTime.DaysInMonth(2020, 9);

// Verificar se o ano determinado é bissexto ou não
bool anoBissexto = DateTime.IsLeapYear(2020); 

// Criar um TimeSpan que contém a diferença de tempo entre uma data e outra
TimeSpan diferenca = dataFinal.Subtract(dataInicial);

// Transformação
string texto = data.ToLongDateString(); // Converter a data para string (no padrão do sistema), ex: 'terça-feira, 24 de novembro de 2020'
string dataTexto = data.ToShortDateString(); // Converter a data para string (no padrão do sistema), exemplo: 24/12/1999
string nomeMes = data.ToString("MMMM"); // Obter o nome do mês
// Objeto DateTime que permite valores nulos
DateTime? nulo = null;

// Criando um objeto de data
DateTime agora = DateTime.Now; // Obtem o dia e as horas atuais
DateTime hoje = DateTime.Today; // Obtem o dia atual
DateTime aniversario = new DateTime(1999, 12, 24); // Criar um DateTime pelos pedaços de data
DateTime data = new DateTime(1999, 12, 24, 15, 30, 0); // Igual o anterior porém acrescentando horas, minutos e segundos
DateTime data = Convert.ToDateTime("1999-12-24"); // Converte uma string para DateTime

// Propriedades
int ano = hoje.Year; // Obtem o ano de um DateTime
int mes = hoje.Month; // Obtem o mês de um DateTime

// Métodos
DateTime anteontem = hoje.AddDays(-2); // Adicionar ou subtrair dias
DateTime proximoMes = hoje.AddMonths(1); // Adicionar ou subtrair meses
TimeSpan diferenca = dataFinal.Subtract(dataInicial); // Cria um elemento que contém a diferença de tempo entre uma data e outra
string dataTexto = data.ToLongDateString(); // Converte a data para string, exemplo: 'terça-feira, 24 de novembro de 2020'
dataTexto = data.ToShortDateString(); // Converte a data para string (no padrão do sistema), exemplo: 24/12/1999

// Estáticos
int dias = DateTime.DaysInMonth(2020, 9); // Retorna o número de dias que um mês possui
bool anoBissexto = DateTime.IsLeapYear(2020); // Retorna se o ano determinado é bissexto ou não

// Transformação
string nomeMes = data.ToString("MMMM"); // Obtém o nome do mês

// Propriedades do elemento TimeSpan
double diasDiferenca = diferenca.TotalDays; // Retorna o tempo em dias
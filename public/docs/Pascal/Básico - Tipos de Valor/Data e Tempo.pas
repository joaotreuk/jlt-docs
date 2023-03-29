// Variável de tipo data e tempo
TDateTime

{ -------------------- VARIÁVEIS -------------------- }

// Obter um elemento DateTime da data atual
Date // Data atual
Now // Data e tempo atuais

// É possível subtrair uma data por outra
DataDiferenca = DataInicial - DataFinal

{ -------------------- MÉTODOS -------------------- }

// Formata um elemento DateTime para um formato específico
FormatDateTime(
    'dd/mm/yyyy', // Fomato desejado, para tempo: "hh:nn"
    elementoDateTime
)

// Converter
DateToStr(Now) // Converte a data de um Datetime para String
TimeToStr(Now) // Converte o tempo de um Datetime para String
// Vari�vel de tipo data e tempo
TDateTime

{ -------------------- VARI�VEIS -------------------- }

// Obter um elemento DateTime da data atual
Date // Data atual
Now // Data e tempo atuais

// � poss�vel subtrair uma data por outra
DataDiferenca = DataInicial - DataFinal

{ -------------------- M�TODOS -------------------- }

// Formata um elemento DateTime para um formato espec�fico
FormatDateTime(
    'dd/mm/yyyy', // Fomato desejado, para tempo: "hh:nn"
    elementoDateTime
)

// Converter
DateToStr(Now) // Converte a data de um Datetime para String
TimeToStr(Now) // Converte o tempo de um Datetime para String
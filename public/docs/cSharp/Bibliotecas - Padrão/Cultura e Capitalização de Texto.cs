// Cultura define o padrão numérico, padrão de data, etc.
using System.Globalization;

// Criando um objeto sobre uma cultura
CultureInfo cultura = CultureInfo.CreateSpecificCulture("pt-br"); // Cria uma cultura específica
CultureInfo cultura = Thread.CurrentThread.CurrentCulture; // Obtem a cultura do thread atual
cultura = CultureInfo.CurrentCulture; // Obtém a cultura sendo usada atualmente

// Sistema de escrita associado a cultura
TextInfo textInfo = cultureInfo.TextInfo;

// Métodos
string textoCapitalizado = textInfo.ToTitleCase("exemplo"); // Capitaliza um texto
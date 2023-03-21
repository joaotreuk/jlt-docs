ExcelPackage caderno = new ExcelPackage();

// Propriedades
caderno.Workbook.Properties.Author = "Ssuark Sistemas"; // Nome do autor
caderno.Workbook.Properties.Subject = "PCP Timbó"; // Assunto
caderno.Workbook.Properties.Title = "Produção por Equipamento"; // Título

// Métodos
ExcelWorksheet folha = caderno.Workbook.Worksheets.Add("Nome da Folha"); // Adiciona uma folha para o caderno
byte[] binario = caderno.GetAsByteArray(); // Salva o caderno e retorna uma array de binários do mesmo para poder ser enviado ao cliente
// Inicialização
ExcelRange celula = folha.Cells[3, 3]; // Obtem a célula da linha x e coluna x
ExcelRange celulas = folha.Cells[1, 1, 1, 10]; // Obtem todas as células em um alcance
ExcelRange celulas = folha.Cells; // Obtem todas células da folha

// Propriedades
celulas.Merge = true; // Define se as células em um alcance são juntadas ou não, padrão: false
celula.Style.Fill.PatternType = ExcelFillStyle.Solid; // Padrão de preenchimento das células
celula.Style.Font.Bold = true; // Se a fonte é negrito ou não, padrão: false
celula.Style.Font.Size = 20f; // Tamanho da fonte
celula.Style.HorizontalAlignment = ExcelHorizontalAlignment.Center; // Alinhamento horizontal do conteúdo da célula
celula.Style.VerticalAlignment = ExcelVerticalAlignment.Center; // Alinhamento vertical do conteúdo da célula
celula.Value = "Exemplo"; // Valor da célula

// Métodos
celula.Style.Border.BorderAround(ExcelBorderStyle.Thin); // Define o tamanho da borda
celula.Style.Fill.BackgroundColor.SetColor(ColorTranslator.FromHtml("#FFF")); // Define a cor de fundo das células
celula.Style.Font.Color.SetColor(ColorTranslator.FromHtml("#4F81BD")); // Definindo a cor da fonte do conteúdo da célula
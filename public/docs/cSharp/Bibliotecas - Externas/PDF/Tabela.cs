// Criando uma nova tabela
PdfPTable tabela = new PdfPTable(5); // Deve se passar o número de colunas

// Propriedades
List<PdfPRow> linhas = tabela.Rows; // Lista de linhas
tabela.SpacingBefore = 15f; // Espaçamento antes da tabela
tabela.WidthPercentage = 100f; // Define o percentual do tamanho da tabela em relação ao seu elemento pai

// Métodos
tabela.Rows.Add(linha); // Adiciona uma linha, os efeitos de colspan e rowspan não funcionam se as células forem adicionadas deste jeito
PdfPCell celula = tabela.AddCell(celula); // Adiciona uma célula para a tabela, retornando a mesma
tabela.SetWidths(new float[] { 1.65f, 0.9f, 0.9f }); // Define o tamanho de cada célula da tabela
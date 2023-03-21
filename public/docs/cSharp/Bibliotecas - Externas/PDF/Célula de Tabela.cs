// Criando uma nova célula
PdfPCell celula = new PdfPCell();

// Propriedades
celula.BackgroundColor = corBase; // Cor de fundo, um objeto de cor base
celula.BorderWidth = 0.1f; // Tamanho de todas as bordas
celula.BorderWidthBottom = 0.1f; // Tamanho da borda inferior
celula.BorderWidthLeft = 0.1f; // Tamanho da borda esquerda
celula.BorderWidthRight = 0.1f; // Tamanho da borda direita
celula.BorderWidthTop = 3f; // Tamanho da borda superior
celula.Colspan = 2; // Define a quantidade de células que está célula engloba
celula.MinimumHeight = 90f; // Altura mínima da célula
celula.PaddingBottom = 4f; // Preenchimento inferior
celula.PaddingTop = -4f; // Preenchimento superior
celula.VerticalAlignment = Element.ALIGN_MIDDLE; // Define o alinhamento vertical para os itens da célula perante a mesma

// Métodos
celula.AddElement(paragrafo); // Adiciona um elemento para a célula
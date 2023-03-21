// Cria um elemento capaz de criar linhas e formas para o documento
PdfContentByte cb = writer.DirectContent;

// Métodos
cb.MoveTo(30, 30); // Adiciona o elemento para uma posição inicial determinada [Horizontal, Vertical]
cb.LineTo(100, 50); // Preenche o documento a partir da posição inicial até a a posição determinada [Horizontal, Vertical]
cb.SetLineWidth(2f); // Define o tamanho da linha
cb.Stroke(); // Aplica o desenho criado ao documento

// Cria uma linha separadora que pode ser adicionada para o documento
LineSeparator linha = new LineSeparator();
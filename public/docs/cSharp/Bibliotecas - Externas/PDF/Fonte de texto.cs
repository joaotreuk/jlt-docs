// Criando uma fonte de texto
Font fonte = new Font();
fonte = new Font(Font.FontFamily.HELVETICA); // Family
fonte = new Font(Font.FontFamily.HELVETICA, 8); // Family, tamanho
fonte = new Font(Font.FontFamily.HELVETICA, 8, 1); // Family, tamanho, estilo
fonte = new Font(Font.FontFamily.HELVETICA, 8, 1, BaseColor.BLUE); // Family, tamanho, estilo, cor

// Propriedades
fonte.Color = corBase; // Cor de fundo, um objeto de cor base
fonte.Style = 1; // Define o identificador do estilo

// Identificadores de estilo
/*
    0 = Normal, o padrão
    1 = Negrito
    2 = Italico
    3 = Negrito e italico
    4 = Com linha em baixo
*/
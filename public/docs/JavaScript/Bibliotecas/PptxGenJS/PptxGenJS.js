// <script src="~/PptxGenJS-master/pptxgen.bundle.js"></script>
// <script src="~/PptxGenJS-master/jszip.min.js"></script>
// <script src="~/PptxGenJS-master/promise.min.js"></script>

// Adicionar texto ao slide
Slide.addText(
    "Texto",
    {
        x: 7.6, // Posição horizontal; padrão: 1
        y: 0.3, // Posição Vertical; padrão: 1
        w: 3, // Largura
        h: 0, // Altura
        align: 'left', // Alinhamento; opções: left, center or right; padrão: left
        bold: true, // Negrito; padrão: false
        bullet: true, // Se o texto é um item de uma lista; padrão: false
        charSpacing: 12, // Espaçamento entre cada caracter
        color: '010101', // Cor hexadecimal do texto
        fill: 'FF00FF', // Cor hexadecimal do background
        fontFace: 'Arial', // Padrão: 'Arial'
        fontSize: 11, // Tamanho da fonte; padrão: 18
        glow: { size:10, opacity:0.75, color:'0088CC' }
    }
)

// Adicionar texto com opções
Slide.addText(
    [{
        text: "Texto",
        options: {
            hyperlink: {
                url: 'https://github.com/gitbrent/pptxgenjs', // Adicionar hyperlink ao texto
                tooltip: 'Visitar página' // Tooltip para o hyperlink
            }
        }
    }],
    { x: 5, y: 2.6 }
)
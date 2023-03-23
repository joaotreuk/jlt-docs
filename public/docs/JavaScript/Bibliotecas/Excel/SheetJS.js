// <script src="~/Scripts/SheetJS/xlsx.full.min.js"></script>
// <script src="~/Scripts/Filesaver/FileSaver.min.js"></script>

// Cria um novo caderno
const caderno = XLSX.utils.book_new();

// Passa informações sobre o caderno
caderno.Props = {
    Title: "Título",
    Subject: "Nome da Aplicação",
    Author: "Autor",
    CreatedDate: new Date(2020, 04, 25) // Data de criação
};

// Converte uma matriz de matrizes para uma folha do caderno
const folha = XLSX.utils.aoa_to_sheet([['Celula', 'Celula2'], ['Linha2']]);

// Altera o tamanho das colunas
folha['!cols'] = [ 
    { wch: 15 }, // Primeira coluna
    { wch: 100 } // Segunda coluna
]

// Adicionar uma folha
caderno.SheetNames.push('Folha'); // Declara uma folha no caderno
caderno.Sheets['Folha'] = folha; // Adiciona uma folha para a sua declaração

// Salva o arquivo usando o FileSaver JS
const wbout = XLSX.write(caderno, { bookType: 'xlsx', type: 'binary' });
saveAs(new Blob([s2ab(wbout)], { type: "application/octet-stream" }), 'Exemplo.xlsx');

function s2ab(s) {
    buf = new ArrayBuffer(s.length); //convert s to arrayBuffer
    view = new Uint8Array(buf); //create uint8array as viewer
    for (var i = 0; i < s.length; i++) view[i] = s.charCodeAt(i) & 0xFF; //convert to octet
    return buf;
}

/* 
    r = Possicao - 1
    e: c = Quantas celulas vai se expandir para esquerda
    s: c = Quantas celulas vai se expandir para direita
*/
var folha = XLSX.utils.aoa_to_sheet(Folha_Dados)
var merge = { s: { r: 1, c: 0 }, e: { r: 1, c: 2 } }

// add merges
folha['!merges'] = []
folha['!merges'].push(merge)
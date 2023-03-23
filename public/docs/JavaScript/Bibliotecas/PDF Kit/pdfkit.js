//<script src="FileSaver.min.js"></script>
//<script src="blob-stream.js"></script>
//<script src="pdfkit.standalone.js"></script>

const DocumentoPdf = new PDFDocument({
    margin: 27
})

// pipe the document to a blob
const Stream = DocumentoPdf.pipe(blobStream())

// add your content to the document here, as usual
DocumentoPdf.fontSize(25).text("Hello World!", 100, 100)

// Devesse adicionar uma nova página antes dos limites da página anterior serem ultrapassados
if (i > 750) {
    DocumentoPdf.addPage() // Adiciona uma nova página ao documento
    i = 30
}

// get a blob when you're done
DocumentoPdf.end()

// Baixa o arquivo usando FileSaver.js
Stream.on('finish', function () {
    Blob = Stream.toBlob('application/pdf')
    saveAs(Blob, 'MyFile.pdf')
})
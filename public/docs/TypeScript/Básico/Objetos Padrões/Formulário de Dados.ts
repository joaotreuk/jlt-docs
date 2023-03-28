// Cria um formulário de dados
// Um formulário de dados pode ser enviado como o corpo de uma requisição HTTP
const formData = new FormData();

// Adiciona um arquivo ao FormData
formData.append(
    'arquivo', // Nome idemtificador deste dado do fomulário
    arquivo, // Variável de arquivo
    arquivo.name // Nome do arquivo
);
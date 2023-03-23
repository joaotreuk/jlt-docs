// Cria um formulário de dados
var Formulario = new FormData() 

// Adiciona um arquivo ao FormData
Formulario.append(FileFoto.files[0].name, FileFoto.files[0])

// Adiciona uma linha de dados ao formulário
Formulario.append(
    'Usuario', // Nome do paramêtro
    'admin' // Valor
)
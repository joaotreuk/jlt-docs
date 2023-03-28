// Variável de tipo arquivo
let arquivo: File;

// Propriedades
let nome = arquivo.name; // Nome do arquivo, string

const reader = new FileReader();
//$event.target.files
reader.onload = (event: any) => this.imagemURL = event.target.result;
reader.readAsDataURL(file[0]);
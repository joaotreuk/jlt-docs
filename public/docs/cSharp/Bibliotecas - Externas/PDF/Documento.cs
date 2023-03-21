// Cria um novo documento
Document documento = new Document();
Document documento = new Document(PageSize.A4); // Passando o tipo da folha
Document documento = new Document(PageSize.A4, 20f, 20f, 20f, 20f); // Passando o tipo da folha e as margens (esquerda, direita, cima, baixo)

// Associa o documento a um fluxo de memória RAM, este que se molda junto ao documento para criar o arquivo
PdfWriter writer = PdfWriter.GetInstance(documento, memoryStream);

// Propriedades
float altura = documento.PageSize.Height; // Altura do documento
float tamanho = documento.PageSize.Width; // Tamanho do documento

// Métodos
bool sucesso = documento.Add(elemento); // Adiciona um elemento ao documento. Imagem, paragrafo, tabela, etc. Retorna se teve sucesso em adicionar ou não
sucesso = documento.AddCreator("João Treuk"); // Adiciona o autor do documento, retorna se teve sucesso em adicionar ou não
sucesso = documento.AddTitle("Meu titulo"); // Adiciona um título para o documento, retorna se teve sucesso em adicionar ou não
documento.Close(); // Após todo o conteudo ter sido adicionado, pode se fechar o documento para não permitir mais que nada seja adicionado
documento.Open(); // Abre o documeto para adicionar o conteudo
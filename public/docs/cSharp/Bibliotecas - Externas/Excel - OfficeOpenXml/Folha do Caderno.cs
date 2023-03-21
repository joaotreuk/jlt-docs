// Inicialização
ExcelWorksheet folha = caderno.Workbook.Worksheets.Add("Nome da Folha"); // Adiciona uma nova folha ao caderno e retorna a mesma

// Propriedades
folha.Name = "Exemplo"; // Nome da folha

// Propriedades das linhas
folha.Row(2).Height = 20d; // Altura da linha específicada

// Propriedades das colunas
folha.Column(1).Width = 20d; // Define o tamanho de uma coluna
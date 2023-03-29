uses ComObj

// Cria um objeto de um aplicativo Office
planilha := CreateOleObject('Excel.Application');
folha := CreateOleObject('Word.Application');

// Excel
planilha.WorkBooks.add(1); // Adiciona um número x de folhas ao caderno
planilha.Workbooks.Open(Caminho); // Abre uma planilha Excel pelo seu caminho
planilha.Caption := 'Meu Aplicativo'; // Adiciona uma legenda ao Excel
planilha.DisplayAlerts := False; // Se mostra alertas ou não
planilha.Visible := False; // Define se o excel é visível ou não, padrão: False
planilha.Cells[1, 1] := 'Exemplo'; // Adiciona uma célula
planilha.Cells[1, 1].Value; // Obtém o valor da célula
planilha.ActiveWorkBook.Save; // Salva a planilha na pasta de documentos do usuário atual
planilha.Quit; // Fecha o Excel

// Word
documento = folha.Documents.Add; // Cria um novo documento
folha.Selection.TypeText("Meu texto!"); // Insere um texto no documento
documento.SaveAs("Meu Documento.doc"); // Salva o documento criado
folha.Quit; // Fecha o Word
folha.Visible := False; // Define se o word é visível ou não, padrão: False
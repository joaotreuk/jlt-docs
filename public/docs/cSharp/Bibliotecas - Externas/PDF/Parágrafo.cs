// Criando um paragrafo
Paragraph paragrafo = new Paragraph();

// Propriedades
paragrafo.Alignment = Element.ALIGN_CENTER; // Define o alinhamento do texto do paragrafo
paragrafo.Font = fonte; // Define o elemento de fonte de texto para o paragrafo
paragrafo.IndentationLeft = 3f; // Espaçamento para a esquerda dos elementos do paragrafo
paragrafo.SpacingBefore = -95f; // Espaçamento antes do paragrafo

// Métodos
bool valor = paragrafo.Add("Texto"); // Adiciona um texto para o paragrafo
paragrafo.RemoveAt(0); // Remove de sua lista de elementos o elemento no índice passado
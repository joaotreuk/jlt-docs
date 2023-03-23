// Converte um número para string
10.toString()
numero.toStringAsPrecision(3) // Define um limite máximo de caracteres
numero.toStringAsFixed(2); // Define um limite máximo de números depois da vírgula

// Transformação
String texto = texto.toLowerCase(); // Deixa todas as letras em minúsculo
texto = texto.toUpperCase(); // Deixa todas as letras em maiúsculo

// Interpolação de string
print("Pessoas: $variavel")
print("Pessoas: ${numero.toStringAsPrecision(3)}") // Interpolando mais de uma variável

// Permitir o uso de caracteres programados em uma string
print("\$ \"")

// Verificações
texto.isEmpty // Verifica se uma string está vazia, retona true se estiver vazio
texto.isNotEmpty // Verifica se uma string não está vazia, retona true se não estiver vazio
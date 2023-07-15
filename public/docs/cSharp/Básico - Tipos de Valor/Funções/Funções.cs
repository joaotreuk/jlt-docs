// Função com tipo de retorno especifico que pode ser usada de parâmetro
// Último tipo passado é o tipo do retorno, tipos anteriores são os tipos dos parâmetros
Func<string, int> myMethod = (texto) => 5;
Func<string, string, int> myMethod = (texto, texto2) => 5; // Dois ou mais parâmetros
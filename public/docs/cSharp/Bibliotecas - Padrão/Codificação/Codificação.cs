using System.Text;

/*-------------------- MÉTODOS --------------------*/

// Codificar um texto em uma array de bytes em um formato específico
byte[] dados = Encoding.Unicode.GetBytes("Exemplo"); // Em formato UFT-16
byte[] dados = Encoding.UTF8.GetBytes("Exemplo"); // Em formato UFT-8
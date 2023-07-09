// Atributos com anotações para representação dos campos no banco de dados ou para validação dos campos
using System.ComponentModel.DataAnnotations;

// Validações de campo
[StringLength(100)] // Define o tamanho máximo de uma string
[StringLength(100, MinimumLength = 3)] // Definindo o tamanho mínimo de uma string
[Range(2, 50000)] // Definindo uma variedade entre um número e outro como valores permitidos
[Phone] // Define que o campo precisa ser um telefone válido
[EmailAddress] // Define que o campo precisa ser um e-mail válido

// Mensagem de erro para o caso de erro na validação
// É possível passar esta propriedade para qualquer tipo de verificação
[Required(ErrorMessage = "Requerido")]
[Required(ErrorMessage = "O campo {0} é obrigatório!")] // Usar {0} para retornar o nome da propriedade

// Retorna se o modelo sendo passado para o controlador está válido ou não
bool statusModelo = ModelState.IsValid;

// Anotações para controle de objetos no banco de dados
using System.ComponentModel.DataAnnotations.Schema;

// Tipo da coluna no banco de dados
[Column(TypeName = "nvarchar(150)")]


/*-------------------- DEPRECIADO --------------------*/

// Definir se um campo é obrigatório ou não
// Em versões mais recentes do c# pode-se usar a tag required no lugar
[Required]
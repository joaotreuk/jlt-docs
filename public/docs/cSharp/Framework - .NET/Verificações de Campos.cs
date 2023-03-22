public class Aluno
{
    // Definindo uma verificação para uma propriedade
    [Required]
    public int Id { get; set; }

    // Definindo mais de uma verificação para uma propriedade
    [Required]
    [EmailAddress]
    public string Email { get; set; }
}

// Verificações
[StringLength(100)] // Define o tamanho máximo de uma string
[StringLength(100, MinimumLength = 3)] // Definindo o tamanho mínimo de uma string
[Range(2, 50000)] // Definindo uma variedade entre um número e outro como valores permitidos
[Phone] // Define que o campo precisa ser um telefone válido
[EmailAddress] // Define que o campo precisa ser um e-mail válido
[Column(TypeName = "nvarchar(150)")] // Represenada a coluna do banco de dados em que a propriedade é mapeada

// Propriedades
[Required(ErrorMessage = "Requerido")] // Passando uma mensagem de erro para a verificação, é possível passar esta propriedade para qualquer tipo de verificação
[Required(ErrorMessage = "O campo {0} é obrigatório!")] // Usar {0} para retornar o nome da propriedade


// Retorna se o modelo sendo passado para o controlador está válido ou não
bool statusModelo = ModelState.IsValid;
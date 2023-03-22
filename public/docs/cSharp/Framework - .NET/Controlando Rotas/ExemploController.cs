using Microsoft.AspNetCore.Mvc;

namespace ProAgil.WebAPI.Controllers
{
    // Define que é um controlador de uma API, fazendo os parâmetros de métodos POST serem os bodys da requisição
    // Se ele não estiver declarado para definir que o parâmetro de um método seja o corpo da requisição se deve usar o atributo: Metodo([FromBody] Aluno aluno)
    // Graças a ele as validações de modelos passados para métodos são feitas automaticamente
    [ApiController]

    [Route("[controller]")]
    // Cria uma rota para "/Exemplo"
    public class ExemploController : ControllerBase
    {
        // Usando um método GET
        [HttpGet]
        public string Get()
        {
            return "Olá mundo!";
        }

        // Usando a mesma rota, porém passando um parâmetro
        // Exemplo: /Exemplo/Joao
        [HttpGet("{string}")]
        public string Get(string nome)
        {
            return $"Olá {nome}!";
        }

        // Usando o IActionResult é possível definir o código de status e outras informações para o HTTP
        // Usando tarefas assíncronas (Task<>) faz as chamadas requests não travarem, podendo serem chamadas múltiplas, por múltiplos usuários
        [HttpGet]
        public async Task<IActionResult> Get()
        {
            // Tipos de retorno
            return BadRequest(); // Retorna com o status 400 definindo que ocorreu uma má requisição
            return Created($"/api/aluno/{aluno.Id}", aluno); // Retorna com o status 201 definindo que um novo elemento foi criado, passa a URL do novo elemento criado
            return NotFound(); // Retorna com o status 404 definindo que a requisição desejada não foi encontrada
            return Ok("Resultado recebido com sucesso!"); // Retorna com o status 200 definindo que não ocorreu nenhum problema
            return Unauthorized(); // Retorna com o status 401, definindo que a requisição não foi autorizada

            // Define qual status será retornado por HTTP
            return this.StatusCode(
                StatusCodes.Status500InternalServerError, // Status
                "Banco de dados falhou!" // Mensagem de retorno
            );
        }

        // Usando uma sub rota
        [HttpGet("FiltrarPorNome/{nome}")]
        public async Task<IActionResult> Get(string nome) {}

        // Usando um método POST
        [HttpPost]
        public async Task<IActionResult> Postar() {}

        // Usando um método PUT
        [HttpPut("{Id}")]
        public async Task<IActionResult> Atualizar(int Id){}

        // Usando um método Delete
        [HttpDelete("{Id}")]
        public async Task<IActionResult> Deletar(int Id){}

        // Se tiver sido configurado que o aplicativo usa autenticação automaticamento os métodos dos controladores exigirão autenticação
        // Com o marcador abaixo pode-se permitir uso para o método sem autenticação
        [AllowAnonymous]
        public IActionResult Metodo(){}
    }
}

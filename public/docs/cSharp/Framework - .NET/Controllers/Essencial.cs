using Microsoft.AspNetCore.Mvc;

// O controller deve herdar de ControllerBase
public class ExemploController : ControllerBase { }

// Define que é um controlador de uma API, fazendo os parâmetros de métodos POST serem os bodys da requisição
// Se ele não estiver declarado para definir que o parâmetro de um método seja o corpo da requisição se deve usar o atributo: Metodo([FromBody] Aluno aluno)
// Graças a ele as validações de modelos passados para métodos são feitas automaticamente
[ApiController]

// Define a URL usada no end-point para acessar o controller ou um método do controller
// Métodos sem o Route vão usar apenas a rota do controller, por exemplo, em um método get basta apenas passar a rota do controller
//sem especificar o nome do método, porém só pode ter um método de cado tipo assim para cada controller, os demais métodos vão precisar
//do Route especificado
// Não é case sensitive
[Route("minha-rota")] // Ficaria assim em um controller: 'localhost:8080/minha-rota/get'
[Route("[controller]")] // Usar o próprio nome do controller na rota
[Route("[action]")] // Em um metódo usar seu próprio nome

// Tipos de métodos
[HttpGet]
[HttpPost]
[HttpPut("{Id}")]
[HttpDelete("{Id}")]
[HttpGet("[action]")] // Combinação com o atributo Route
public string Get() { }

// Usando a mesma rota, porém passando um parâmetro
// Exemplo: /Exemplo/Joao
[HttpGet("{string}")]
[HttpGet("FiltrarPorNome/{nome}")] // Combinando a junção do Route com um parâmetro
public string Get(string nome) { }

// Usando o IActionResult é possível definir o código de status e outras informações para o HTTP
// Usando com o Task faz as chamadas requests não travarem, podendo serem chamadas múltiplas, por múltiplos usuários
public async Task<IActionResult> Get()
{
  // Tipos de retorno
  return BadRequest(); // Retorna com o status 400 definindo que ocorreu uma má requisição
  return Created($"/api/aluno/{aluno.Id}", aluno); // Retorna com o status 201 definindo que um novo elemento foi criado, passa a URL do novo elemento criado
  return NotFound(); // Retorna com o status 404 definindo que a requisição desejada não foi encontrada
  return Unauthorized(); // Retorna com o status 401, definindo que a requisição não foi autorizada

  // Retorna com o status 200 definindo que não ocorreu nenhum problema
  // Pode-se passar qualquer object como retorno
  return Ok("Resultado recebido com sucesso!"); 

  // Define qual status será retornado por HTTP
  return this.StatusCode(
      StatusCodes.Status500InternalServerError, // Status
      "Banco de dados falhou!" // Mensagem de retorno
  );
}
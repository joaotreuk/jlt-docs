// Controlador
using System.Web.Mvc;

/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/

public class ProdutosController : Controller
{
	// Métodos HTTP
}

/*-------------------- PROPRIEDADES --------------------*/

// Utilidades para gerenciamento de URLs para a view a ser renderizada
UrlHelper url = Url;

/*-------------------- MÉTODOS --------------------*/

// Tipos de métodos HTTP
public ActionResult Index() { return View(); } // Método mais genérico, pode retornar uma view (com o mesmo nome do método), um JSON ou uma string
public ContentResult ObterInformacao() { return Content("Exemplo"); } // Usado para retornar uma string
public JsonResult ObterDados() { return Json("Exemplo"); } // Usado para retornar um JSON, qualquer variável passada no Json() é convertida para JSON
[HttpGet] public ContentResult MeuMetodo() { } // Definindo um método GET
public JsonResult MeuMetodo() { return Json(1, JsonRequestBehavior.AllowGet); } // Definindo um método JsonResult para GET

// Parâmetros para os métodos
public ActionResult Index(int parametro = 0) { } // É possível obter os parâmetros naturalmente como parâmetros do método
string parametro = Request.QueryString["search[value]"]; // Obtendo um parâmetro passado pela URL, ex: http://www.contoso.com/default.aspx?parametro=5
string parametro = Request["parametro"]; // Igual ao de cima

// Retornando views, no exemplo chama a view: "Index.cshtml"
public ActionResult Index()
{
	// Passando informações para a view
	ViewBag.QualquerInformacao = minhaInformacao; // Com o ViewBag é possível definir variáveis dinâmicas, aceita qualquer tipo de variável
	ViewData["QualquerInformacao"] = minhaInformacao; // Igual o ViewBag, porém não é dinâmico

	// Chama a view
	return View();
}

// Exemplo ContentResult
public ContentResult MeuMetodo()
{
	ContentResult resultado = new ContentResult { ContentType = "application/json" };
	return resultado;
}

// Exemplo JsonResult
public JsonResult MeuMetodo() {
	// Criando um resultado JSON
	JsonResult resultado = new JsonResult();
	resultado = Json('Exemplo'); // Criando com dados
	resultado = Json('Exemplo', JsonRequestBehavior.AllowGet); // Definindo se permite requisição por GET ou não, padrão: DenyGet

	// Propriedades
	resultado.Data = 'Dados'; // Dados do resultado
	resultado.MaxJsonLength = int.MaxValue; // Definindo o tamanho máximo do JSON
}
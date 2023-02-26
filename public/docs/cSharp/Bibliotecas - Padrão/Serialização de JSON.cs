using System.Web.Script.Serialization;

// Criando um novo serializador
JavaScriptSerializer serializador = new JavaScriptSerializer();
serializador.MaxJsonLength = int.MaxValue // Define o length máximo da string a ser serializada

// Métodos
string stringJson = serializador.Serialize(objeto); // Serializa uma variável para texto JSON

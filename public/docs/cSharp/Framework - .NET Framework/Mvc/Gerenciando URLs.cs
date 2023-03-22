// Utilidades para gerenciamento de URLs para a view a ser renderizada
using System.Web.Mvc;

/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/

// Propriedade que pode ser obtida de controllers (Controller) ou de views (WebViewPage)
UrlHelper url = Url;

/*-------------------- MÉTODOS --------------------*/

// Converte um caminho virtual em um caminho absoluto de aplicativo
string caminho = url.Content("~/Scripts/react-dom.production.min.js"); // Retorna /Scripts/react-dom.production.min.js
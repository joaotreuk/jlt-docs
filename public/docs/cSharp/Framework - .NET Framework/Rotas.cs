// Configurando rotas para a aplicação
public static void RegisterRoutes(RouteCollection rotas)
{
	// Configuração para permitir url sem padrões para o site (Pagina.aspx, Pagina.html)
	FriendlyUrlSettings settings = new FriendlyUrlSettings { AutoRedirectMode = RedirectMode.Off };
	rotas.EnableFriendlyUrls(settings);

	// Habilitar o uso de URLs em letras minúsculas
	rotas.LowercaseUrls = true;

	// Rota padrão
	rotas.MapRoute(
		"Default",
		"{controller}/{action}/{id}",
		new { controller = "Home", action = "Index", id = UrlParameter.Optional }
	);
}

// Configurando rotas para uma área
public override void RegisterArea(AreaRegistrationContext contexto)
{
	// Rota padrão para os controladores desta área
	contexto.MapRoute(
		"NomeArea_default",
		"NomeArea/{controller}/{action}/{id}",
		new { action = "Index", id = UrlParameter.Optional }
	);

	// Criando uma rota customizada
	contexto.MapRoute(
		"NomeControladorRoute",
		"minha-area/usando-setinha/{action}/{id}", // Para usar '-' em uma rota deve-se fazer uma rota customizada setando o controlador
		new {
			controller = "NomeControlador", // Controlador que usa a rota customizada
			action = "Index", id = UrlParameter.Optional
		}
	);
}
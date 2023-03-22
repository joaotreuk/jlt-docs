// Informações
// Areas são sub-rotas com models, views e controllers

// Erro: Falha de logon do usuário 'IIS APPPOOL\DefaultAppPool'
// Solução: Conectar o banco de dados pelo web config usando usuário e senha

// Configurações de build
/*
<configuration>
	<appSettings>
		<!-- Número máximo de itens desserializados pelo JSON, padrão: 1000 -->
		<add key="aspnet:MaxJsonDeserializerMembers" value="1000000" />

		<!-- Configurações customizadas para serem manipuladas no C# -->
		<add key="Issuer" value="Meu app API" />
		<add key="Audience" value="Meu app front-end" />
		<add key="SecurityKey" value="sDkn2983 $$$ sk&#ghs d Wu9eb 84_|8dd SwIjwn+b HHH" />
	</appSettings>
	<connectionStrings>
		<!-- Connection with user authentication -->
		<add name="NomeConexao" connectionString="Data Source=NomeServidor;Initial Catalog=NomeBanco;Integrated Security=True" providerName="System.Data.SqlClient" />

		<!-- Conexão com usuário e senha -->
		<add name="NomeConexao" connectionString="Data Source=NomeServidor;Initial Catalog=NomeBanco;Persist Security Info=True;User ID=Usuario;Password=Senha" providerName="System.Data.SqlClient" />
	</connectionStrings>
	<system.web>
		<!-- targetFramework = Versão do framework .NET -->
		<!-- executionTimeout = Tempo em que o aplicativo aguarda uma resposta do servidor em segundos -->
		<httpRuntime targetFramework="4.7.2" executionTimeout="200" />

		<!-- Tempo que demora para finalizar a sessão enquanto o usuário está inativo em minutos, configurar isso também no IIS -->
		<sessionState timeout="120"></sessionState>
		
		<!-- Para exibir diretamente um erro que ocorreu no servidor -->
		<customErrors mode="Off"/>
	</system.web>
</configuration>
*/
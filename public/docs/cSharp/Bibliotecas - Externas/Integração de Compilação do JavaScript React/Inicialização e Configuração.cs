// Inicialização e configuração para renderizar os componentes React no lado do servidor
// O arquivo de configuração (ReactConfig.cs) será criado automaticamente ao instalar o pacote React.Web para o projeto em questão

// Precisa instalar os pacotes abaixo, mesmo sem haver importação diretamente
// React.Web
// Microsoft.ClearScript.V8.Native.win-x64
// Microsoft.ClearScript.V8.Native.win-x86

using JavaScriptEngineSwitcher.Core;
using JavaScriptEngineSwitcher.V8;

/*-------------------- DECLARAÇÃO / ATRIBUIÇÃO --------------------*/

[assembly: WebActivatorEx.PreApplicationStartMethod(typeof(PCPTimbo.ReactConfig), "Configure")]

namespace MeuProjeto
{
  public static class ReactConfig { }
}

/*-------------------- MÉTODOS --------------------*/

// Método de configuração
public static void Configure()
{
  // Adicionar componentes para renderização
  // Os componentes precisam ser salvos em arquivos .jsx
  // Parece que não precisa fazer isso, é só definir a engine de renderização, porém ainda salvar os arquivos como .jsx
  ReactSiteConfiguration.Configuration.AddScript("~/Scripts/Login.jsx");

  // Adicionar arquivos pré compilados para renderização
  // Parece que não precisa fazer isso, é só definir a engine de renderização
  ReactSiteConfiguration.Configuration
    .SetLoadBabel(false)
    .AddScriptWithoutTransform("~/Scripts/lib/React/react.production.min.js");

  // Definindo a engine a ser usada para renderizar os componentes
  // (Gerenciador de Engines)
}
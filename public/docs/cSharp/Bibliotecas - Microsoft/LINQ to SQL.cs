/// <summary>
/// LINQ to SQL é um componente do .NET Framework versão 3.5 que fornece uma infraestrutura de tempo de execução para o gerenciamento de dados relacionais como objetos
/// No LINQ to SQL, o modelo de dados de um banco de dados relacional é mapeado para um modelo de objeto expresso na linguagem de programação do desenvolvedor
/// Quando o aplicativo é executado, o LINQ to SQL converte em SQL as consultas integradas à linguagem no modelo de objeto e as envia ao banco de dados para execução
/// Quando o banco de dados retorna os resultados, o LINQ to SQL converte-os novamente em objetos com os quais você pode trabalhar em sua própria linguagem de programação
/// </summary>

/// <summary> Instalação
/// No aplicativo Instalador do Visual Studio ir em: Componentes individuais -> Ferramentas de Código
/// Então marcar a opção "Ferramentas do LINQ to SQL" e instalar
/// </summary>

/// <summary> Criação de Contexto de Dados
/// No Visual Studio clicar com o botão direito em um projeto e ir em: Adicionar -> Novo Item -> Dados -> LINQ to SQL Classes
/// Isso ira criar um arquivo SeuProjeto.dbml, esse arquivo possuí um editor gráfico
/// Neste editor gráfico pode-se arrastar tabelas da aba 'Gerenciador de Servidores' para a tela, criando assim classes com atributos iguais os do banco de dados
/// Clicando em uma classe é possível editar as propriedades da classe e de seus campos
/// </summary>

/// <summary> Campo de uma Classe do Contexto de Dados </summary>
/// <param name="Update Check">Define se o campo será usado como chave em um UPDATE, deixar em "Never" todos os campos que não são chave de tabela e "Always" os campos chave</param>
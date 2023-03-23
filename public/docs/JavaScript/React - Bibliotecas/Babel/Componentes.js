// Criando componentes
let componente = <h1>Olá Mundo!</h1> // Um componente é uma variável JSX
componente = <div />; // Toda tag vazia pode ser fechada com "/>"
// Para múltiplas linhas, é recomendado colocar dentro de parêntese
componente = ( 
	<h1>
		Exemplo
	</h1>
);
// Criando um componente de forma crua
componente = {
	type: 'h1',
	props: {
		className: 'greeting',
		children: 'Hello, world!'
	}
};

// Usando expressões JavaScript dentro de componentes. Ex: {variavel}, {funcao()}
componente = <h1>Olá, {'João'}</h1>;
componente = <img src={user.avatarUrl}></img>; // Usando uma expressão JavaScript para definir um atributo

// Componentes função
componente = <MeuComponente nome="Joao" />;
function MeuComponente(propriedades) { return <h1>Olá {propriedades.nome}</h1>; } // Essas funções recebem propriedades que são passadas como atributos HTML
function MeuComponente() { return null; } // Pode-se retornar null para definir que o componente não seja exibido
<MeuComponente minhaData={this.state.dataAtual} /> // É possível passar as propriedades do componente para um componente pai

// Lista de componentes
const componenteLista = lista.map((item) =>
  <li>{item}</li>
);
// É necessário definir uma chave única para os componentes de uma lista de componentes
componenteLista = lista.map((item) =>
	<li key={item.id}>{item}</li>
);

// Exibição condicional
// A parte do componente somente será exibida se a condição for verdadeira
{unreadMessages.length > 0 &&
	<h2>
		You have {unreadMessages.length} unread messages.
	</h2>
}
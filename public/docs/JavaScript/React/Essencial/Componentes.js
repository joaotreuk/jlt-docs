// Criando um componente
const meuComponente = React.createElement(
	'h1', // Tag do componente
	// Propriedades e eventos do componente
	{ 
		className: 'minhaClasse',
		onClick: () => funcao()
	},
	'Hello, world!' // Filhos do componente
);

// Uma classe de um componente stateLess
class NomeComponente extends React.Component {
	render() {
		return React.createElement('button', {}, 'Like');
	}
}

// Uma classe de um componente stateFull
class NomeComponente extends React.Component {
	// Método construtor
	constructor(propriedades) {
		super(propriedades);

		// Definindo uma propriedade de estado (Que pode ser modificada dinâmicamente)
		this.state = { liked: false };

		// Definindo uma variável que pode ser acessada em qualquer lugar da classe do componente
		this.minhaVariavel = 1;
	}

	// Métodos de ciclo de vida
	componentDidMount() {} // Método chamado após o componente ser criado
  componentDidUpdate(propsAnteriores, estadoAnterior) { } // Método chamado após o estado ser atualizado
	componentWillUnmount() {} // Método chamado antes do componente ser destruído

	// Uma função interna do componente
	alterarEstado() {
		// Atualiza as propriedades de estado, assim as renderizando dinâmicamente no componente
    this.setState({
      liked: true
		});

		// Recebe o estado e as propriedades anteriores
		this.setState((estado, propriedades) => ({
			liked: estado.liked && propriedades.isLiked
		}));
  }

	render() {
		// Renderiza o componente com base em um estado
		if (this.state.liked) return 'You liked this.';
		{this.props.campo} // Propriedades do componente, não podem modificar o estado

		// Método de renderização do componente, aquilo que será gerado na tela
		return React.createElement(
			'button',
			{ onClick: () => this.setState({ liked: true }) },
			'Like'
		);
	}
}
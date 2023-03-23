// Uma classe de um componente stateLess
class MeuComponente extends React.Component {
	render() {
		return (
				<h1>{this.props.dataAtual.toLocaleTimeString()}</h1>
		);
	}
}

// Uma classe de um componente stateFull
class MeuComponente extends React.Component {
  render() {
    return (
        <h1>{this.state.dataAtual.toLocaleTimeString()}</h1>
    );
  }
}
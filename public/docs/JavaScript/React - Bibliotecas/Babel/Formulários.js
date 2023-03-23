class NameForm extends React.Component {
	constructor(props) {
		super(props);
		this.state = {value: 'coco'}; // Definin um valor para um elemento de formulário

		this.handleChange = this.handleChange.bind(this);
		this.handleSubmit = this.handleSubmit.bind(this);
	}

	handleChange(event) {
		this.setState({value: event.target.value});
	}

	handleSubmit(event) {
		alert('Um nome foi enviado: ' + this.state.value);
		event.preventDefault();

		// Atribuindo um novo valor ao elemento pelo seu atributo "name"
		this.setState({
      ["atributoName"]: "NovoValor"
    });
	}

	render() {
		return (
			<form onSubmit={this.handleSubmit}>
				<input type="text" value={this.state.value} onChange={this.handleChange} />
				<select value={this.state.value} onChange={this.handleChange}>
					<option value="laranja">Laranja</option>
					<option value="limao">Limão</option>
					<option value="coco">Coco</option>
					<option value="manga">Manga</option>
				</select>
				<select multiple={true} value={['B', 'C']}></select> // A tag select pode receber uma lista de valores
				<input type="submit" value="Enviar" />
			</form>
		);
	}
}
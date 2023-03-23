componentDidMount() {
    // Deve-se adicionar o evento onChange após o componente ser montado
    $('#SeProcesso').on("change", () => { this.minhaFuncao("I") });
}
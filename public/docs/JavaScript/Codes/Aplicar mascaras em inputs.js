function formatar(mascara, documento) {
    var i = documento.value.length;
    var saida = mascara.substring(0, 1);
    var texto = mascara.substring(i)

    if (texto.substring(0, 1) != saida) {
        documento.value += texto.substring(0, 1)
    }

}

// exemplos:
// <input type="text" name="data" maxlength="10" OnKeyPress="formatar('##/##/####', this)" >
// <input type="text" name="tel" maxlength="12" OnKeyPress="formatar('##-####-####', this)" >
// <input type="text" name="cep" maxlength="9" OnKeyPress="formatar('#####-###', this)" >
// <input type="text" name="cpf" maxlength="14" OnKeyPress="formatar('###.###.###-##', this)" >
// <input type="text" name="hora" maxlength="5" OnKeyPress="formatar('##:##', this)" >
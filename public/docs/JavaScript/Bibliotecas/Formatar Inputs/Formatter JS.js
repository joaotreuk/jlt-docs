// <script src="~/Scripts/formatter.min.js"></script>

// Aplica o padrão a todos elementos da classe Telefone
$('.Telefone').formatter({
    pattern: '({{99}}) {{9999}} - {{9999}}' // 9 para somente números, a para somente letras, * para tudo
})

// Aplica o padrão ao elemento da id
$('#Placa').formatter({
    pattern: '{{***}} - {{****}}'
})
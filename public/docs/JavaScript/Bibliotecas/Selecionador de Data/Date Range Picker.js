//<link href="daterangepicker/daterangepicker.css" rel="stylesheet" />
//<script src="~/Scripts/jquery-3.5.1.min.js"></script> // Dependência
//<script src="moment/moment.min.js"></script> // Dependência
//<script src="daterangepicker/daterangepicker.js"></script>

// Exemplo usando o date picker em um botão em forma de dropdown
$(botao).daterangepicker({
    singleDatePicker: true, // Se quer exibir apenas um datepicker
    showDropdowns: true, // Se mostar ou não os dropdowns de mês e ano
    startDate: moment().startOf('month'), // Data inicial
    endDate: moment().endOf('month'), // Data do fim do range
    maxDate: moment(), // Data máxima do filtro
    maxYear: Number(moment().format('YYYY')),
    minYear: 2000,
    ranges: {
        'Hoje': [moment(), moment()],
        'Ontem': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
        'Este Mês': [moment().startOf('month'), moment().endOf('month')],
        'Mês Passado': [
            moment().subtract(1, 'month').startOf('month'),
            moment().subtract(1, 'month').endOf('month')
        ],
        'Últimos 30 Dias': [moment().subtract(29, 'days'), moment()],
        "Este Ano": [moment().startOf('year'), moment().endOf('year')]
    },
    locale: {
        format: "DD/MM/YYYY",
        separator: " - ",
        applyLabel: "Aplicar",
        cancelLabel: "Cancelar",
        fromLabel: "De",
        toLabel: "Até",
        customRangeLabel: "Customizado",
        weekLabel: "W",
        daysOfWeek: ["Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sab"],
        monthNames: [
            "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho",
            "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"
        ]
    }
}, (DataInicial, DataFinal, Label) => {
    // Função que ocorre ao alterar a data, retorna as datas como objetos moment
})

// Redefinir a data inicial e final do picker
$(botao).data('daterangepicker').setStartDate(moment().startOf('month'))
$(botao).data('daterangepicker').setEndDate(moment().endOf('month'))

// 
$('#TxtFiltroData').on('apply.daterangepicker', function(ev, picker) {
    $(this).val(picker.startDate.format('DD/MM/YYYY') + ' - ' + picker.endDate.format('DD/MM/YYYY'))
})
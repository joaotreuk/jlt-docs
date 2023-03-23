$(Elemento).DataTable({
    autoWidth: false,
    dom: '<"datatable-header"fl><"datatable-scroll"t><"datatable-footer"ip>',
    language: {
        decimal: "",
        emptyTable: "Sem dados disponíveis",
        info: "Mostrando _START_ até _END_ de _TOTAL_ resultados",
        infoEmpty: "Mostrando 0 até 0 de 0 resultados",
        infoFiltered: "(filtrado de _MAX_ resultados totais)",
        infoPostFix: "",
        thousands: ",",
        lengthMenu: "<span>Mostrar:</span> _MENU_",
        loadingRecords: "Loading...",
        processing: "Processing...",
        search: '<span>Buscar:</span> _INPUT_',
        zeroRecords: "Nenhum resultado correspondente foi encontrado",
        paginate: {
            first: 'Primeiro',
            last: 'Último',
            next: $('html').attr('dir') == 'rtl' ? '&larr;' : '&rarr;',
            previous: $('html').attr('dir') == 'rtl' ? '&rarr;' : '&larr;'
        },
        aria: {
            sortAscending: ": activate to sort column ascending",
            sortDescending: ": activate to sort column descending"
        }
    }
})
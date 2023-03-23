// <link href="~/Scripts/DataTables/buttons.bootstrap4.min.css" rel="stylesheet" /> CSS para bootstrap 4
// <script src="~/Scripts/DataTables/dataTables.buttons.min.js"></script>
// <script src="~/Scripts/DataTables/buttons.bootstrap4.min.js"></script> JS para bootstrap 4
// <script src="~/Scripts/DataTables/buttons.colVis.min.js"></script> Extensão colVis

let Tabela = $('#Tabela').DataTable({
	buttons: [
		{
			extend: 'colvis', // Extensão a ser usado no botão, colvis = column visibility
			text: 'Visibilidade', // Texto do botão
			columns: ':gt(1)' // Colunas que serão afetadas, :gt(1) pega todas as colunas depois da coluna 1
		}
	]
});

// Altera a classe padrão dos botões
$.fn.dataTable.Buttons.defaults.dom.button.className = 'btn btn-sm btn-primary';

// Para uma estilização de bootstrap o ideal é aplicar o elemento de extensão junto a outro elemento existente
Tabela.buttons().container().appendTo('.dataTables_length'); // Aplica o container da extensão de botões ao elemento "mostrar"

// Adiciona uma classe ao elemento "mostrar" para separar do elemento adicionado
divTabela.querySelector('.dataTables_filter').firstElementChild.classList.add("mr-3");
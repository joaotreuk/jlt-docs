// <script src="Scripts/jquery-3.5.1.min.js"></script>
// <link href="DataTables/datatables.min.css" rel="stylesheet" />
// <script src="DataTables/datatables.min.js"></script>

// Aplica o componente a um elemento TABLE
let dtTabela = $('#ElementoTable').DataTable({
    autoWidth: false, // Remove o width autogerado, usado em conjunto com o nowrap para a tabela ficar inline
    columnDefs: [
        {
            cellType: "th", // Tipo da celula, padrão: 'td'
            className: "text-center align-middle", // Classes das colunas
            data: "", // Pode-se salvar qualquer tipo de dados para a coluna
            name: "exemplo", // Nome da coluna
            orderable: false, // Desativa a ordenação nestas colunas
            searchable: false, // Define se estas colunas podem ou não ser pesquisadas no campo de busca, padrão: true
            targets: 7, // Colunas que seram afetas por estas opções, exemplo: [5, 6]
            visible: false // Esconde estas colunas
        },
        { 
            defaultContent: "-", // Valor padrão caso a celula esteja vazia
            targets: '_all' // Afeta todas as colunas
        }
    ],
    data: dados, // Passa os dados da tabela em forma de array, exemplo da array abaixo
    dom: `<'row'
        <'col-sm-12 col-md-6'<'float-left'f>>
        <'col-sm-12 col-md-6'<'float-right'l>>
    > 
    <'row'<'col-sm-12'tr>>
    <'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7'p>>`, // Define o DOM dos elementos do datatable
    iDisplayLength: 25, // Número inicial de resultados exibidos por página da paginação
    info: false, // Remove as informações no bottom
    fnDrawCallback: function(oSettings) { }, // Função chamada quando o datatable é redesenhado
    language: { // Configurar a linguagem
        decimal: "",
        emptyTable: "Sem dados disponíveis",
        info: "Mostrando _START_ até _END_ de _TOTAL_ resultados",
        infoEmpty: "Mostrando 0 até 0 de 0 resultados",
        infoFiltered: "(filtrado de _MAX_ resultados totais)",
        infoPostFix: "",
        thousands: ".",
        lengthMenu: "Mostrar _MENU_ resultados",
        loadingRecords: "Loading...",
        processing: "Processando...",
        search: "Buscar:",
        zeroRecords: "Nenhum resultado correspondente foi encontrado",
        paginate: {
            first: "",
            last: "",
            next: "Próximo",
            previous: "Anterior"
        },
        aria: {
            sortAscending: ": activate to sort column ascending",
            sortDescending: ": activate to sort column descending"
        }
    },
    lengthChange: false, // Remove o show entries
    order: [[ 0, "desc" ]], // Define a ordenação inicial, [] para deixar sem ordenação
    ordering: false, // Remove a ordenação de todas colunas
    paging: false, // Remove a paginação
    searching: false, // Remove o campo de busca
    stateDuration: 60 * 60 * 24, // Segundos em que stateSave será ativo, se definir como 0 ficará ativo sempre, padrão = 2 horas ou 60 * 60 * 2
    stateSave: true // Define se as ações (Filtro, ordenação, visibilidade) feitas pelo usuário serão salvas em cache, padrão = false    
});

// Exemplo de dados para passar para datatable
let linhaDeDados = [3222, "Exemplo", "<span class='badge badge-primary'>Usando HTML</span>"];
let dados = [linhaDeDados, linhaDeDados];

// Definições
let possui = $.fn.DataTable.isDataTable('#ElementoTable'); // Retorna se uma tabela possui o datatable ou não
$('#ElementoTable').DataTable().destroy(); // Remove o datatable da tabela

// Manipulando os dados
let temDados = $('#ElementoTable').DataTable().data().any(); // Retorna se tem dados no datatable ou não
$('#ElementoTable').DataTable().row.add(linhaDeDados).draw(); // Adiciona uma linha de dados
$('#ElementoTable').DataTable().row(1).data(linhaDeDados).draw(); // Atuliaza uma linha com novos dados, no exemplo esta atualizando a linha 1 com os novos valores
$('#ElementoTable').DataTable().rows(meuElementoTR).remove().draw(); // Remove uma linha a partir de um elemento TR
$('#ElementoTable').DataTable().cell(1, 0).data("Novo Valor").draw(); // Atualiza uma célula, pelo index da linha e da coluna
dtTabela.row(1).id(); // Obter o identificador de uma linha

// Pega a index da linha, a index não muda não importa a ordenação
$('#ElementoTable').DataTable().row(Linha).index();

// Campo de busca
$('#ElementoTable').search('').draw(); // Limpar o campo de busca, fazer uma busca por javascript
$('#ElementoTable').rows({ search: 'applied' }).data(); // Obtem uma lista das linhas que aparecem utilizando o campo search

// Eventos
$('#ElementoTable').on('search.dt', () => { console.log(dtTabela.search()) }); // Evento keyup do campo de busca
$('#ElementoTable').DataTable().off('search.dt'); // Desativa um evento

// Adiciona um evento onclick aos tr da tabela
var Tabela = $('#example').DataTable();
$('#example tbody').on('click', 'tr', function() {
    var data = Tabela.row(this).data();
    alert('You clicked on ' + data[0] + '\'s row');
});
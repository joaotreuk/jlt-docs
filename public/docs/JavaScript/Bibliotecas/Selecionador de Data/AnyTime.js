// <link href="~/Content/Estilo.css" rel="stylesheet">
// <script src="~/Scripts/anytime.min.js"></script>

// Input para receber o time picker
// <input type="time" id="TxtHora" onclick="RemoverTimePicker()"></input>

$('#TxtHora').AnyTime_picker({
    format: '%H:%i', // Formato a ser exibido no input 
    labelTitle: 'Hora de Início', // Título, podesse usar HTML
    labelHour: 'Hora', // Label hora, podesse usar HTML
    labelMinute: 'Minuto', // Label minuto, podesse usar HTML
    earliest: '05:00:00', // Horário mínimo a ser selecionado
    latest: '19:00:00' // Horário máximo
})

// Remove o time picker
$('#TxtHora').AnyTime_noPicker()

// Funções para adicionar picker no click de um botão e remover no click do input
function AdicionarTimePicker() {
    $('#TxtHora').AnyTime_noPicker().AnyTime_picker()
    TxtHora.focus()
}

function RemoverTimePicker() {
    $('#TxtHora').AnyTime_noPicker()
}
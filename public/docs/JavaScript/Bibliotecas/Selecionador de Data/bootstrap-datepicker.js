// Bootstrap-datepicker provides a flexible datepicker widget in the Bootstrap style.

// <link href="~/Content/bootstrap-datepicker.min.css" rel="stylesheet" /> -- Estilo para bootstrap 2
// <link href="~/Content/bootstrap-datepicker3.min.css" rel="stylesheet" /> -- Estilo para bootstrap 3
// <link href="~/Content/bootstrap-datepicker.standalone.css" rel="stylesheet" /> -- Estilo que não depende do bootstrap
// <script src="~/Scripts/bootstrap-datepicker-master/bootstrap-datepicker.min.js"></script>
// <script src="~/Scripts/bootstrap-datepicker-master/bootstrap-datepicker.pt-BR.min.js"></script> -- Traduzir o componente para pt-br

/*
    Exemplo HTML

    <div class="input-group DataInicio date">
        <input type="text" id="TxtData" class="form-control mr-2 bg-white" readonly="readonly">
        <div class="input-group-prepend">
            <button type="button" class="btn btn-info">
                <i class="fas fa-calendar-alt"></i>
            </button>
        </div>
    </div>
*/

// Seleciona o input e o input-group com a classe date, para poder selecionar a data através das classes input-group filhas do input-group date
$('#TxtData, .input-group.date').datepicker({
  maxViewMode: 2, // Máximo de views mostradas, 0 = Apenas os dias, 1 = meses, 2 = anos, 3 = décadas, 4 = séculos; padrão: 4
  format: "dd/mm/yyyy", // Formato da data; padrão: 'mm/dd/yyyy'
  todayBtn: "linked", // Se aparece ou não o botão hoje; padrão: disabled
  language: "pt-BR", // Linguagem, precisa do script da linguagem; padrão: "en"
  clearBtn: true, // Se mostra ou não o botão "Limpar"; padrão: false
  autoclose: true, // Se fecha automaticamente ao selecionar; padrão: false
  todayHighlight: true, // Se destaca o dia de hoje; padrão: false
  title: "Data Inicial", // Título; padrão: ""
  forceParse: false // Faz a data do input não mudar no caso de fechar o datepicker sem selecionar nenhuma data; padrão: true
}).on('hide', () => {
  // Faz os dois datepickers funcionarem em conjunto
  $(TxtData).datepicker('update', TxtData.value)
  $('.input-group.date').datepicker('update', TxtData.value)
})

// Podesse usar uma classe intermediária para evitar bugs no caso de ter mais de um datepicker na mesma página
$('#TxtData, .input-group.Data1.date').datepicker() 
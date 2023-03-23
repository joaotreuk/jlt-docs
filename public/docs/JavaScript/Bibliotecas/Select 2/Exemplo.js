// <link href="select2/css/select2.min.css" rel="stylesheet" />
// <link href="select2-bootstrap4-theme-master/dist/select2-bootstrap4.min.css" rel="stylesheet" /> <-- Opcional -->
// <script src="select2/js/select2.full.min.js"></script>
// <script src="select2/js/i18n/pt-BR.js"></script> <-- Opcional -->

// Bootstrap 5
// https://www.npmjs.com/package/select2-bootstrap-5-theme
// npm i select2-bootstrap-5-theme

// Ativa o select2 em todos elementos com a classe select2
$('.select2').select2({
    theme: 'bootstrap4',
    placeholder: 'Selecione uma opção',
    allowClear: true, // Se permite ou não limpar a seleção
    tags: true, // Se permite que o usuário adicione novas opções ao select, padrão: false
    dropdownAutoWidth: true, // Se o dropdown se expande para além do tamanho do select, padrão: false
    dropdownParent: $('#Modal'), // O parente padrão é o BODY, caso esteja em uma modal devera defir a mesma como parente
    language: "pt-BR", // Define a linguagem
    data: Dados, // Array de dados para popular o select
    minimumInputLength: 1, // Limite mínimo de caracteres de input para o campo de busca
    minimumResultsForSearch: Infinity, // Define para "Infinity" para ocultar o campo de busca
    createTag: Parametros => { // Função chamada quando o usuário adiciona uma nova opção
        var term = $.trim(Parametros.term)

        if (term === '') return null

        return {
            id: term,
            text: term,
            NovaTag: true // Adiciona um novo paramêtro ao objeto de opção do select
        }
    }
})

var Dados = [ { id: 0, text: 'Carro' }, { id: 1, text: 'Moto'} ] // Padrão de array para popular os dados do select

// Usando ajax para buscar os dados do select
// É necessário permitir GET pelo JSON
$('#sEquipamento').select2({
    ajax: {
        url:"/Pagina/Funcao", // URL da função a ser chamada
        dataType: 'json',
        data: parametros => ({
            filtro: parametros.term ?? '', // Filtro do campo de busca
            pagina: parametros.page ?? 1 // Página atual da paginação, se for a primeira página deve-se fazer uma verificação de não definido
        }),
        // Função chamada no retorno da requisição
        processResults: retorno => ({ 
            // Define os dados do select com o valor retornado
            results: ({ id: retorno.id, text: retorno.texto }),
            // Parâmetro opcional para o caso queria usar paginação
            pagination: {
              more: true // Retornar se a mais itens a serem buscados no servidor ou não
            }
        })
    }
});

// Retorna uma matriz das opções selecionadas
$(Elemento).select2('data')
$(Elemento).select2('data')[0].NovaTag // Novo paramêtro definido para a opção

// Adiciona um novo OPTION ao select (Inner Texto, Value, Se é o valor default, se esta selecionado atualmente)
let NovaOpcao = new Option("Texto", 20, false, false)
$(Elemento).append(NovaOpcao).trigger('change')

// Limpa a seleção do select
$('#Elemento').val(null).trigger("change");

// Remove todas opções do select2 se as mesmas foram passadas pelo campo "data"
$(Elemento).html('').select2({ data: null })

// Verifica se um elemento possui o select2
if ($(Elemento).hasClass("select2-hidden-accessible")) // Retorna true se o elemento possuir o select2

// Remove o select 2 dos elementos
$('.select2').select2('destroy')

// Problemas --------------------------------------------------------------------------------------

// Quando é um select múltiplo ao ser iniciado usando o plugin para bootstrap pode não ser exibido o placeholder
// A solução é alterar o width do elemento que exibe o placeholder
document.querySelector('input.select2-search__field').style.width = '100%';

// Se o select estiver dentro de um elemento com classe 'input-group', devesse usar esta função para evitar bug de tamanho
function setSelect2ContainerWidth() {
    $(".select2-container").each(function () {
        var $this = $(this),
            inputGroup = $this.parents(".input-group"),
            inputGroupContainerWidth,
            inputGroupAddonWidth = 0

        if (inputGroup.length) {
            inputGroupContainerWidth = inputGroup.parents("[class^='col-']").width() || inputGroup.parents(".form-group").width()

            $this.parents(".input-group").find(".input-group-addon, .input-group-btn").each(function () {
                inputGroupAddonWidth += $(this).outerWidth()
            })

            $this.css({ width: inputGroupContainerWidth - inputGroupAddonWidth })
        }
    })
}
setSelect2ContainerWidth()
// <script src="sweetalert2.all.min.js"></script>
import Swal from 'sweetalert2';

// Problema quando se está usando display flex na página, devesse adicionar um display flex na classe do sweetalert que é dada para o body
<style>
    .swal2-shown {
        display: flex;
        justify-content: center;
        align-items: center;
    }
</style>

Swal.fire({
    title: "Titulo do alerta",
    text: "Mensagem",
    html: '<span>HTML<span>',
    icon: "success", // Tipos: success, warning, error; Antes era chamado de "type"
    timer: 5000, // Temporizador para o fechamento automatico do alert
    showCloseButton: true, // Padrão: false
    showCancelButton: true, // Padrão: false
    showConfirmButton: false, // Se exibe ou não o botão de confirmação, padrão: true
    confirmButtonText: 'OK',
    cancelButtonText: 'Cancelar',
    focusConfirm: false, // Padrão: true
    reverseButtons: true // Padrão: false
// Função chamada ao clicar no botão de confirmação
// Se for fechado pelo timer então o resultado é : {dismiss: 'timer'}
}).then((resultado) => {
    console.log(resultado)
})

// Limitless 2
var swalInit = swal.mixin({
    buttonsStyling: false,
    confirmButtonClass: 'btn btn-primary',
    cancelButtonClass: 'btn btn-light'
})

swalInit({ title: Titulo, text: Texto, type: Tipo })
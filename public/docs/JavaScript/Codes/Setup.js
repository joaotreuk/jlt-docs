// Variável de setup da página
var FormWizard = function ()
{
    // Variável de inicialização de um componente
    var _ComponenteWizard = function() 
    {
        // Verifica se o componente existe
        if (!$().steps) 
        {
            console.warn('Warning - steps.min.js is not loaded.')
            return
        }

        // Inicia o componente
        $('.steps-enable-all').steps()
    }

    // Return objects assigned to module
    return {
        init: function() {
            _ComponenteWizard()
        }
    }
}()

// Inicializa o módulo
document.addEventListener('DOMContentLoaded', function() {
    FormWizard.init()
})
$('.steps-enable-all').steps({
    headerTag: 'h6',
    bodyTag: 'fieldset',
    transitionEffect: 'fade',
    enableAllSteps: true,
    enableFinishButton: false, // Se exibe ou não o botão finish do formulário
    titleTemplate: '<span class="number">#index#</span> #title#',
    labels: {
        previous: '<i class="icon-arrow-left13 mr-2" /> Previous',
        next: 'Next <i class="icon-arrow-right14 ml-2" />',
        finish: 'Submit form <i class="icon-arrow-right14 ml-2" />'
    }//,
    //saveState: true,
    //startIndex: 2,
    //autoFocus: true
});
// Descontinuar, usar meu próprio componente de loading
// <script src="~/Scripts/blockui.min.js"></script>

// Verificar se o botão que chamou a função ajax esta desabilitado, para não causar chamadas redundantes
$(elementoBotao).on('click', (e) => {
	// Inicia o bloqueamento dos itens que serão afetados pelo ajax
	$(elementoContainer).block({
		message: '<i class="icon-spinner2 spinner"></i>', // Mostra o ícone de carregamento
		overlayCSS: { // CSS a ser usado junto com o block
			backgroundColor: '#fff',
			opacity: 0.8,
			cursor: 'wait',
			'box-shadow': '0 0 0 1px #ddd'
		},
		css: {
			border: 0,
			padding: 0,
			backgroundColor: 'none',
			width: '100%',
			height: '100%'
		}
	});
	
	$.ajax({
		complete: () => {
			$(elementoContainer).unblock(); // Após a chamada ajax ser completada remover o bloqueamento
		}
	});
});
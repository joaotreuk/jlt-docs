// Usando a lib por arquivos script
//<link href="~/Content/CustomizacaoFullCalendar.css?v=@Sistema.Versao" rel="stylesheet" />
//<script src="~/Scripts/lib/FullCalendar/main.min.js"></script>
//<script src="~/Scripts/lib/FullCalendar/pt-br.js"></script> Arquivo de linguagem local (se necessário)


// <div id="divCalendario"></div

/*-------------------- CONFIGURAÇÕES --------------------*/
// Cria o componente de calendário para o elemento DIV
let calendario = new FullCalendar.Calendar(document.getElementById('divCalendario'), {
	aspectRatio: 2, // Sets the width-to-height aspect ratio of the calendar, padrão: 1.35
	// Destacar apenas os horários de trabalho
	businessHours: {
		daysOfWeek: [1, 2, 3, 4, 5, 6],
		startTime: '06:00',
		endTime: '18:00'
	},
	// Definir os ícones que seram usados nos botões, se estiver usando o tema bootstrap deve-se passar ícones do fontAwesome
	buttonIcons: {
		prev: 'left-single-arrow',
		next: 'right-single-arrow',
		prevYear: 'left-double-arrow',
		nextYear: 'right-double-arrow'
	},
	// Definir manualmente o texto dos botões, o ideal é usar o locale para fazer isso
	buttonText: {
		today: 'hoje',
		month: 'mês',
		week: 'semana',
		day: 'dia',
		list: 'lista'
	},
	contentHeight: 600, // Sets the height of the view area of the calendar
	// Adicionar botões customizados, deve-se adicionar o nome do botão na toolbar em que o for adicionar
	customButtons: {
		botaoAdicionar: {
			text: 'Adicionar', // Texto do botão
			icon: 'left-single-arrow', // Usando um ícone ao invés do texto no tema padrão
			bootstrapFontAwesome: 'fa-times', // Usando um ícone ao invés do texto no tema bootstrap
			click: (mouseEvent, htmlElement) => { } // Evento ao clicar no botão
		}
	},
	// Permitir ou não que seja possível arrastar um evento e move-lo para um novo horário, padrão: false
	editable: true,
	// Matriz de eventos a serem exibidos
	events: [{
		title: 'Meeting', // Título a ser exibido
		start: '2021-06-14T14:30:00', // Ínicio
		end: '2021-06-17T09:00:00', // Término
		backgroundColor: 'green', // Cor, pode-se usar qualquer cor CSS
		borderColor: 'green', // Cor da borda, pode-se usar qualquer cor CSS
		// Propriedades customizados
		extendedProps: {
			status: 'concluído'
		}
	}],
	// Formatar o horário dos eventos
	eventTimeFormat: {
		hour: '2-digit',
		minute: '2-digit',
		meridiem: false
	},
	expandRows: true, // If the rows of a given view don’t take up the entire height, they will expand to fit
	footerToolbar: { }, // Aceita os mesmos valores do headerToolbar
	handleWindowResize: false, // Whether to automatically resize the calendar when the browser window resizes
	// Definir quais elementos seram exibidos no cabeçalho, os elementos podem ser separados por: ' ' ou ','
	// Pode-se passar o nome de exibições para exibir os seus botões de troca de exibição
	headerToolbar: {
		start: 'title', // Apareceram no ínicio do cabeçalho
		center: '', // Apareceram no centro do cabeçalho
		end: 'botaoAdicionar timeGridWeek,today prevYear,prev,next,nextYear' // Apareceram no final do cabeçalho
	},
	height: 650, // Altura do calendário
	// Tipo de exibição inicial do componente
	/*
		dayGridMonth = Calendário do mês
		timeGridWeek = Calendário da semana
		listWeek = Lista vertical que exibe os eventos disponíveis na semana
		dayGridWeek = Grade com colunas para cada dia da semana
		É possível fazer Custom Views 
	*/
	initialView: 'timeGridWeek',
	// Idioma, precisa incluir o arquivo .js do idioma
	locale: 'pt-br',
	// Se exibe uma barra indicando o horário atual ou não, padrão: false
	nowIndicator: true,
	// Define a formatação da label de horas (nas exibições de timeGrid)
	slotLabelFormat: {
		hour: '2-digit',
		minute: '2-digit',
		omitZeroMinute: false,
		meridiem: 'short'
	},
	stickyFooterScrollbar: true, // Whether to fix the view’s horizontal scrollbar to the bottom of the viewport while scrolling
	stickyHeaderDates: false, // Whether to fix the date-headers at the top of the calendar to the viewport while scrolling
	// Define o formato da data de título, podendo definir por exemplo para o nome do mês ser apenas a abreviação
	titleFormat: {
		year: 'numeric',
		month: 'short',
		day: 'numeric'
	},
	titleRangeSeparator: ' até ', // Define o texto separador de range no título, ex: 1 até 30 de maio
	// Definir o tema a ser utilizado, se usar Bootstrap deve-se incluir os ícones do FontAwesome no projeto
	themeSystem: 'bootstrap',
	// Customizando exibições
	views: {
		// Adicionando uma exibição customizado, o nome do objeto é o nome a ser utilizado para invocar a exibição
		timeGridDay: {
			type: 'timeGrid', // Tipo da exibição
			duration: { days: 1 }, // Número de dias a serem mostrados
			buttonText: 'Dia' // Texto do botão de troca de exibição
		}
	},
	windowResizeDelay: 100, // The time the calendar will wait to adjust its size after a window resize occurs, in milliseconds
	// Evento chamado quando a data é definida, seja na inicialização ou quando a data é alterada
	datesSet: (dateInfo) => { },
	// Evento chamado após um evento ser construído
	// Pode-se usar este evento para adicionar popovers para cada elemento
	eventDidMount: (info) => { },
	eventMouseEnter: (mouseEnterInfo) => { }, // Evento chamado ao passar o mouse por cima de um item
	// Evento chamado após uma exibição ser aplicada
	// Pode-se aplicar classes customizadas para os elementos do componte aqui
	viewDidMount: (info) => { },
	windowResize: (arg) => { }, // Triggered after the calendar’s dimensions have been changed due to the browser window being resized	

	// Opções apenas para o calendário do mês
	fixedWeekCount: false, // Se definido como falso o calendário de mês mostra apenas o número de semanas que o mês tem, do contrário ele mostra sempre 6 semanas, padrão: true
	showNonCurrentDates: false, // Se exibe ou não os dias dos outros meses para completar o calendário, padrão: true

	// Opções apenas para a lista de semanas
	allDaySlot: false, // Se exibe a barra "Dia inteiro" ou não, padrão: true
	eventMinHeight: 10, // In timeGrid view, the minimum height an event is allowed to be. default: 15
	eventShortHeight: 15, // In timeGrid view, the height threshold for when an event has a “short” style. default: 30
	slotEventOverlap: false, // Determines if timed events in TimeGrid view should visually overlap, default: true
	// All-Day Render Hooks: ? // Customize parts of the UI that typically display the text “all-day”.

	// Opções apenas para a lista vertical
	//listDayFormat: Date formater a ser utilizado para formatar o campo do nome do dia da semana, se passar 'false' a campo não é exibido
	//listDaySideFormat: Date formater a ser utilizado para formatar o campo da data do dia, se passar 'false' a campo não é exibido
	noEventsContent: 'Sem eventos...', // Injeta um conteúdo a ser usado de conteúdo para o painel sem eventos
	//noEventsClassNames: //a ClassName Input
	noEventsDidMount: (el) => {},
	noEventsWillUnmount: (el) => {}
});

/*-------------------- PROPRIEDADES --------------------*/
calendario.view; // Dados da exibição atual

/*-------------------- MÉTODOS --------------------*/
//calendar.addEvent( event [, source ] )

// Adicionar novos dados para o calendário
calendario.addEventSource([
	{
		title: 'ggggggg',
		start: '2021-06-14T14:30:00',
		extendedProps: {
			status: 'done'
		}
	}
]);

// Alterar a exibição utilizada
calendario.changeView('timeGridDay');
calendario.changeView('timeGridDay', '2017-06-01'); // Passando uma nova data atual ao alterar a exibição
calendario.changeView('timeGrid', { start: '2017-06-01', end: '2017-06-05' }); // Passando data inicial e final para exibições customizadas

// an event object!
var event = calendario.getEventById('a');

// Renderizar o calendário
calendario.render();

// Immediately forces the calendar to readjusts its size.
calendario.updateSize();

/*-------------------- FONTE DE EVENTOS --------------------*/

// Obter uma lista de todas fontes de eventos aplicadas
minhaArray = calendario.getEventSources();

// Remover a fonte, assim removendo todos os eventos da fonte do calendário
fonteEvento.remove();

/*-------------------- CONTEÚDO INJETÁVEL --------------------*/
// Certas propriedades do componente permitem injetar um conteúdo para ser exibido
eventContent: 'some text' // Passando texto
eventContent: { html: '<i>some html</i>' } // Passando html
eventContent: { domNodes: arrayOfDomNodes } // Passando uma array of dom nodes
eventContent: (arg) => { return 'some text'; } // Uma função que pode retornar qualquer um dos valores acima
// Adicionar o CSS no arquivo style.css
@import '../node_modules/ngx-bootstrap/datepicker/bs-datepicker.css';

// Adicionar a importação no arquivo app.module.ts
@NgModule({
	imports: [
		BsDatepickerModule.forRoot(),
		BrowserAnimationsModule
	]
})

// Adicionando o seletor de data para um input
`<input type="text" bsDatepicker>`

// Definindo a formato desejado
`<input [bsConfig]="{ dateInputFormat: 'DD/MM/YYYY hh:mm a' }">`

// Criando uma localização do componente para 'pt-br'
defineLocale('pt-br', ptBrLocale);
let localeService: BsLocaleService;
localeService.use('pt-br'); // Define para usar uma localização criada
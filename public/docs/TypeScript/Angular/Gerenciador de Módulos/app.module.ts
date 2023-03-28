import { BrowserModule } from '@angular/platform-browser';

@NgModule({
  // Componentes e pipes do projeto
  // Componentes que compõem outros componentes precisam ser adicionados manualmente
  declarations: [
    AppComponent,
    DateTimeFormatPipe
	],
	// Bibliotecas sendo importadas
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule
	],
	// Serviços a serem utilizados em todo o projeto, só precisa adicionar aqueles que receberam uma configuração
  providers: [
    EventoService, // Serviço
    // Adicionando um interceptador para os serviços
    {
      provide: HTTP_INTERCEPTORS,
      useClass: AuthInterceptor, // Classe interceptadora
      multi: true // Se permite ou não multiplas requisições
    }
  ],
  // Componente em que a aplicação é inicializada
  bootstrap: [AppComponent]
})
export class AppModule { }

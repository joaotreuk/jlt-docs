// Importações para o app.module.ts
import { BrowserAnimationsModule } from '@angular/platform-browser/animations'; // Dependência
import { DashboardComponent } from './dashboard/dashboard.component';
import { ToastrModule } from 'ngx-toastr';

// Adicionar para os imports do app.module.ts
@NgModule({
    imports: [
        BrowserAnimationsModule, // Dependência
        ToastrModule.forRoot()
    ]
})
// Adicionando uma configuração padrão para todo o app
@NgModule({
    imports: [
        ToastrModule.forRoot({
            timeOut: 10000,
            positionClass: 'toast-bottom-right',
            preventDuplicates: true,
        })
    ]
})

// Adicionar código abaixo para o styles.css para evitar bug
#toast-container > div {
    opacity: 1;
}

// Adicionar para a lista de styles do angular.json
"node_modules/ngx-toastr/toastr.css"

// Utilizando o componente
constructor(private toastr: ToastrService) { } // Injetando uma depêndencia do mesmo para um componente
this.toastr.success('Deletado com sucesso!'); // Alerta de sucesso
this.toastr.success('Deletado com sucesso!', 'Toastr fun!'); // Passando um título para o alerta
this.toastr.error('Erro ao tentar deletar!'); // Alerta de erro
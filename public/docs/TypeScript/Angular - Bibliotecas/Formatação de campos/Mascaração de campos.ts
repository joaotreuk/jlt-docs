//npm i ngx-mask

// Adicionar no arquivo 'app.module.ts'
import { NgxMaskModule } from 'ngx-mask';
imports: [ NgxMaskModule.forRoot() ] // Adicionar no imports

// Usando um pipe de máscara
// <small>Telefone: {{evento.telefone | mask: '(000) 00000-0000'}}</small>

// Usando prefixo e máscara em um input
//<input prefix="Http:\\" mask="AAAAAAAAAAAAAAAAAAAAAA">
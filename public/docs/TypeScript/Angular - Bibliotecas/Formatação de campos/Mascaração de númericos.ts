// npm i ngx-currency

// Adicionar no arquivo 'app.module.ts'
import { NgxCurrencyModule } from 'ngx-currency';
imports: [ NgxCurrencyModule ] // Adicionar no imports

// Usando a máscara
//<input type="text" currencyMask> // Com as opções padrão
//<input type="text" currencyMask [options]="{ prefix: 'R$ ', thousands: '.', decimal: ',', align: 'left' }"> // Com opções customizadas
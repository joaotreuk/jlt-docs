// Adicionar no arquivo 'app.module.ts'
import { TabsModule } from 'ngx-bootstrap/tabs';
imports: [ TabsModule.forRoot() ] // Adicionar no imports

// Utilização
<div>
  <tabset>
    <tab heading="Basic title" id="tab1">Basic content</tab>
    <tab heading="Basic Title 1">Basic content 1</tab>
    <tab heading="Basic Title 2">Basic content 2</tab>
  </tabset>
</div>
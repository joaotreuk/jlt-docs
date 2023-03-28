`<ul class="navbar-nav">
	<li class="nav-item dropdown" dropdown>
	  <a dropdownToggle class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown"
	    aria-haspopup="true" aria-expanded="false">
	    Vinícius
	  </a>
	  <div *dropdownMenu class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	    <a class="dropdown-item" href="#">
	      Perfil
	    </a>
	    <div role="separator" class="divider"></div>
	    <a class="dropdown-item" href="#">
	      Sair
	    </a>
	  </div>
	</li>
</ul>`

// Importações para o app.module.ts
import { BsDropdownModule } from 'ngx-bootstrap/dropdown';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
@NgModule({
  imports: [
    BsDropdownModule.forRoot(),
    BrowserAnimationsModule
  ]
})
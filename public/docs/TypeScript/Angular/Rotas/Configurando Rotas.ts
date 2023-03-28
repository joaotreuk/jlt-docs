// No arquivo app-routing.module.ts é possível definir uma lista de rotas
const routes: Routes = [
	{ 
		path: 'dashboard', // Caminho da rota, ex: localhost/dashboard
		component: DashboardComponent // Componente da rota
	},
	{ 
		path: 'dashboard', component: PaginaComponent,
		canActivate: [AuthGuard] // Define o guardião com o método de permissão de ativação da rota
	},
	{ 
		path: 'Usuario/:Id/Editar', // Adicionando uma rota com um valor variável
		component: DashboardComponent
	},
	{ 
		path: 'usuario', component: UsuarioComponent,
		// Adicionando subrotas para a rota
		children: [
			{ path: 'login', component: LoginComponent },
			{ path: 'cadastro', component: CadastroComponent }
		]
	},
	{ 
		path: '',
		redirectTo: 'dashboard', // Caso caía nessa rota redireciona para outra
		pathMatch: 'full'
	},
	{ 
		path: '**', // Caso o usuário acesse uma rota não definida redireciona para outra
		redirectTo: 'dashboard', 
		pathMatch: 'full' 
	}
];

// Tag para definir o componente controlador de rotas
<router-outlet></router-outlet>

// Direcionador de rota, ao ser clicado ativa a rota especificada
<a routerLink="dashboard"></a>
<a [routerLink]="['/evento', id, 'edit']"></a> // Adicionando uma concatenação para a criação de uma rota dinâmica

// Define uma classe para o elemento caso o direcionador de rota contido nele seja a rota atual
<li routerLinkActive="active"></li>

// Alterando rotas pelo TypeScript de um componente
import { Router } from '@angular/router';
constructor(public router: Router) { } // Injetando o gerenciador de rotas através do construtor do componente
router.navigate(['/user/registration']); // Navegar para uma rota passada
router.url // Pegar a url da rota, exemplo: '/user/login'

// Rota atual
private router: ActivatedRoute; // Obter dados sobre a rota atual, através de injeção de depêndencia
this.router.snapshot.paramMap.get('id')
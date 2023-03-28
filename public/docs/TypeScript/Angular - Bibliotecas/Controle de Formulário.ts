// Importando no app.module.ts
@NgModule({ imports: [ReactiveFormsModule] })

// Definindo o formulário
let formulario: FormGroup;

// Adicionando um controlador para cada campo do formulário
formulario = new FormGroup({
	nome: new FormControl(
		'', // Valor padrão do campo
		Validators.required // Validação, define que o campo é obrigatório
	),
	// É possível passar uma array com diversos elementos validadores
	idade: new FormControl('', [
		Validators.minLength(4), // Define que o campo precisa ter pelo menos 4 caracteres
		Validators.maxLength(50), // Define que o campo não pode ter mais de 50 caracteres
		Validators.max(50), // Define que o número passado não pode ser maior que 50
		Validators.email // Define que o valor passado precisa ser um e-mail
	])
});

// Adicionando um controlador para cada campo do formulário usando o FormBuilder
let fb: FormBuilder;
formulario = this.fb.group({
	nome: ['', Validators.required],
	// Adicionando um grupo do formulário
	grupo: this.fb.group(
		{ campo: ['', Validators.required]},
		{ validator: this.meuMetodo } // Adicionando um método validador
	),
	// Adicionando uma lista de grupos de formulário
	lotes: this.fb.array([grupo: this.fb.group()])
});

// Propriedades do formulário
formulario.value // JSON com os dados
formulario.status // Status, se está válido ou inválido
formulario.valid // Se o formulário está válido ou não

// Métodos
formulario.patchValue(objeto); // Define os valores de um formulário por um objeto, será apenas definidos os campos do objeto que sejam iguais ao do formulário
formulario.reset(); // Reseta o formulário
formulario.setValue({ nome: 'João' }); // Define os valores do formulário

// Obter a lista de grupos
listaGrupos.controls;
listaGrupos.get(indice+'.nome')

//#region Campo de formulário
// Obtém um campo do formulário
let campo = formulario.get('nome');

// Propriedades
let erros: string[] = campo.errors; // Lista de erros, se o mesmo possuir erros
let a: boolean = campo.touched; // Retorna se o campo já foi passado pelo usuário ou não
let valor = campo.value; // Obter o valor do campo

// Métodos
a = campo.hasError('required'); // Diz se o campo possuí um erro em sua lista de erros de validação ou não, exemplos: 'minlength', 'maxlength', 'max', 'email', 'customizado'
campo.setErrors({ mismatch: true }); // Adiciona um erro customizado para a lista de erros
//#endregion

// Controle no HTML
'<form [formGroup]="formulario"></form>' // Definindo o formulário para sua variável
'<div formGroupName="passwords"></div>' // Definindo um grupo do formulário
'<div formArrayName="lotes"></div>' // Definindo uma lista de grupos
'<input formControlName="nome">' // Definindo um controlador para o seu campo
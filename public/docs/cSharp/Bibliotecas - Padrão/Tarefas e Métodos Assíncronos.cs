using System.Threading.Tasks;

// Criando métodos assíncronos
public async Task MeuMetodo() { await MetodoAguardado(); } // Tarefa com retorno vazio
public async Task<int> MeuMetodo() { } // Tarefa com retorno de um tipo específico

// Executando uma tarefa de fundo
_ = Task.Run(() => MeuMetodo());
_ = Task.Run(async () => { await MeuMetodo(); await MeuMetodo2(); }); // Uma tarefa com vários métodos
_ = Task.Factory.StartNew(() => MeuMetodo()); // Igual o método acima, porém depreciado

// Esperar um tempo determinado antes de continuar a tarefa
await Task.Delay(60000);

// Cria uma tarefa
Task Tarefa = new Task(Funcao);
Tarefa.Start(); // Inicia uma tarefa existente
Tarefa.Wait(); // Aguarda a tarefa terminar para continuar
// Início
public class FinalizarActivity : Activity { } // Cria uma classe como uma Activity
protected override void OnCreate(Bundle savedInstanceState) {} // Método chamado quando a Activity é criada
public override void OnBackPressed() {} // Método chamado quando o botão para voltar é precionado

// Ativa ou desativa recursos da tela
bool retorno = RequestWindowFeature(WindowFeatures.NoTitle); // Esconde a barra de topo
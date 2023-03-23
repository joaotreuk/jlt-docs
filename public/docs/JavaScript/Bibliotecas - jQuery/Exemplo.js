// <script src="jquery.min.js"></script>
import $ from 'jquery';

// Obter um objeto jQuery dos elementos selecionados usando o seletor CSS
var jqElemento = $(".target");
var jqElemento = $('#Elemento, #Elemento2'); // Pegar varios ID's

// Atribuir uma função para o evento change dos elementos
// Variável da função é o objeto de evento
jqElemento.change((e) => {});
jqElemento.on("change", () => {}); // Método acima é apenas uma abreviação desse
jqElemento.change([eventData], (e) => {}); // Passando dados para a função de evento, segundo parâmetro é a função

// Ativar um evento de mudança
jqElemento.trigger("change");

// Valor de um elemento
jqElemento.val(); // Pegar valor, selects multiplos retornam uma array
jqElemento.val("Novo Valor"); // Alterar valor

// Pega o código de um arquivo html e o coloca dentro do Elemento
$.get("Arquivo.html", (data) => {
    jqElemento.append(data);
});

$("select option:selected").each(() => {}); // For each nos elementos
jqElemento.text(str); // Atribui o valor
jqElemento.text(); // Retorna o valor
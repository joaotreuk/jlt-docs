// Eventos
elemento.onblur; // Quando o elemento perde o foco
elemento.onclick; // Evento ao clicar no elemento
elemento.onkeyup; // Quando uma tecla é precionada
elemento.onmousedown; // Evento chamado ao precionar o mouse
elemento.onmouseenter; // Quando o mouse passa sobre o elemento
elemento.onmousemove; // Evento chamado ao arrastar o mouse em quando o mesmo está precionado
elemento.onmouseup; // Evento chamado ao soltar o mouse

// Ativar eventos de um elemento
elemento.click() // Clica no elemento
elemento.focus() // Da foco a um elemento
elemento.blur() // Remove o foco de um elemento

// Adiciona ao elemento uma função a ser executada sempre que um evento acontecer
elemento.addEventListener('click', () => {});
document.addEventListener('DOMContentLoaded', () => {}); // Evento a ser chamado quando o documento carregar
elemento.addEventListener("keyup", evento => { console.log(evento.key) }) // Evento a ser chamado ao precionar uma tecla
elemento.addEventListener('paste', evento => { // Evento a ser chamado ao clicar em "Colar"
    console.log((evento.clipboardData || window.clipboardData).getData('text')) // Transfere o texto colado para a variável
})

// Define um evento para o elemento
elemento.onclick = () => NovaFuncao();

// Obtendo infomações do evento
let x = event.clientX; // Obtem a coordenada horizontal do mouse em relação a tela em eventos de mouse
let y = event.clientY; // Obtem a coordenada vertical do mouse em relação a tela em eventos de mouse
let elemento = event.target; // Obtem o elemento que gerou o evento

// Evento a ser chamado após um determinado tempo
temporizador = setTimeout(
    () => { console.log(1) }, // Função a ser executa após o tempo passar
    1000 // Tempo em milissegundos
) 

// Evento que se repete continuamente
intervalo = setInterval(
    () => { console.log(1) }, // Função a ser chamada pelo evento
    1000 // Tempo em milissegundos entre cada chamada
)

// Cancelar um evento setTimeout/setInterval antes do mesmo chamar sua próxima execução
clearTimeout(temporizador)
// <script src="hotkeys-master/dist/hotkeys.min.js"></script>

// Chama uma função ao clicar na tecla "insert"
hotkeys('insert', (event, handler) => {
    console.log(event)
    console.log(handler)
})

// Chama uma função ao clicar em qualquer tecla
hotkeys('*', event => {
    console.log(event.key) // Mostra no console a tecla que foi precionada
    console.log(event.keyCode) // Mostra no console o código da tecla precionada
})
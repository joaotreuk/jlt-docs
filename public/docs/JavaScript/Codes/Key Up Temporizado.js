temporizador = null

document.querySelectorAll('.InputFiltro').forEach(Elemento => {
    elemento.addEventListener('keyup', () => {
        clearTimeout(temporizador)
        temporizador = setTimeout(() => { Filtrar() }, 1000)
    })

    elemento.addEventListener('paste', async () => {
        await sleep(200)
        Filtrar()
    })
})
// Verifica se o browser suporta web workers
if (typeof (Worker) !== "undefined")
    console.log("Suporta!")

// Verifica se não foi definido nenhum web worker
if (typeof(w) == "undefined") 
    w = new Worker("../../Scripts/Temp/WebWorker.js") // Define um novo web worker

// Função chamada no retorno do web worker
w.onmessage = function(event) {
    console.log(event.data)
}

// Termina o web worker
w.terminate()

// Prepara o web worker para ser reutilizado
w = undefined

/* No web worker */
// Retorno do web worker
postMessage(Retorno)
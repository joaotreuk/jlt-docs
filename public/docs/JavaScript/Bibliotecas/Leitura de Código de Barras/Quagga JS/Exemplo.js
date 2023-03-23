// <script src="quagga.min.js"></script>

Quagga.init({
    inputStream: {
        name: "Live",
        type: "LiveStream",
        target: document.querySelector('#Camera')
    },
    decoder: {
        readers: ["code_128_reader"]
    }
}, function (err) {
    if (err) {
        alert(err)
        return
    }
    console.log("Initialization finished. Ready to start")
    Quagga.start()
})

Quagga.onDetencted(function(data){
    console.log(data)
})
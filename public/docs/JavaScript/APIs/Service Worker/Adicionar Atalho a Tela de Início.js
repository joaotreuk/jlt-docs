// Arquivo service-worker.js não precisa ter nada

// Na página do link abaixo é possível verificar se o website possui manifesto e também é possível testar o manifesto
// https://manifest-validator.appspot.com

/*
<html>
    <head>
        <!-- Linka o manifesto a página -->
        <link rel="manifest" href="manifest.json">
    </head>
    <body>
        <script>
            // Requisitos: HTTPS ou localhost
            // Verifica se o manifesto vai funcionar, o manifesto contém os dados para o atalho da aplicação
            if ('serviceWorker' in navigator) {
                console.log("Will the service worker register?")
                navigator.serviceWorker.register('service-worker.js').then(reg => {
                    console.log("Yes, it did.", reg)
                }).catch(err => {
                    console.log("No it didn't. This happened:", err)
                })
            }
        </script>
    </body>
</html>
*/

// manifest.json
/*
{
  "background_color": "#000", "_Comentario": "Cor de fundo ao aplicar a aplicação pelo ícone da tela inicial",
  "display": "standalone", "_Comentario2": "Forma com que a aplicação será mostrada, Tipos: standalone(Abre a aplicação separadamente do navegador), fullscreen",
  "icons": [
    {
      "sizes": "192x192", "_Comentario": "Tamanho do ícone",
      "src": "Imagens/bus.png", "_Comentario2": "Caminho deste arquivo até o ícone",
      "type": "image/png", "_Comentario3": "Tipo de arquivo do ícone"
    }
  ],
  "name": "Viagem Segura", "_Comentario3": "Nome do aplicativo",
  "short_name": "Viagem Segura", "_Comentario4": "Um curto que será usado abaixo do ícone como atalho",
  "start_url": "Home", "_Comentario5": "Caminho deste arquivo até a página inicial",
  "Theme_color": "#536878"
}
*/
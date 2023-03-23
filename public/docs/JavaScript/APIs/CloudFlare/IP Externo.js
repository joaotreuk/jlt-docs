$.get('https://www.cloudflare.com/cdn-cgi/trace', Dados => {
    console.log(Dados.split('\n')[2].split('=')[1]) // IP Externo
    console.log(Dados)
})
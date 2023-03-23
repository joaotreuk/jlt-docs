// Objeto com informações sobre a página atual

// Propriedades
location.href = "https://www.exemplo.com/Pasta/Arquivo.html?variavel=valor" // URL da página atual
location.hostname // Nome do domínio da página atual, exemplo: 'www.exemplo.com'
location.pathname // Obtem o caminho da página atual, exemplo: '/Pasta/Arquivo.html'
location.protocol // Obtem o protocolo da página atual, exemplo: 'https:'
location.port // Obtem a porta da página atual, exemplo: '8080', caso seja a porta padrão (80 ou 443) é retornado vazio
location.search // Obtem os parâmetros passados pela URL, exemplo: '?variavel=valor'
location.origin // Obtem a página de origem (a página index por exemplo), exemplo: 'https://www.exemplo.com'

// Métodos
location.assign("https://www.exemplo.com") // Abre uma nova página
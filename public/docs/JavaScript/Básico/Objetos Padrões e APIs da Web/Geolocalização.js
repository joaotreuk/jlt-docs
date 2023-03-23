// Objeto com informações sobre a geolocalização, filho do objeto "navigator"
// A geolocalização consiste na posição geográfica do usuário
// A localização do usuário era baseada no seu endereço IP, agora é baseada na sua posição de latitude e longitude.

// Função assíncrona que retorna a posição atual do usuário
navigator.geolocation.getCurrentPosition(
    posicao => {
        posicao.timestamp // Objeto TimeStamp do momento em que a leitura da posição foi feita
        posicao.coords.latitude // Latitude
        posicao.coords.longitude // Longitude
    },
    // Parâmetro opcional que retornada uma função no caso de ocorrer um erro
    erro => {
        erro.code // Código do erro
        // 0 = Erro desconhecido, algum erro relativo a outro código na aplicação
        // 1 = O aplicativo não obteve permissão para usar a localização do usuário
        // 2 = A posição não pode ser determinada, devido ao provedor de localização
        // 3 = O tempo máximo a se esperar pela solicitação foi ultrapassado
        erro.message // Mensagem para analizar na depuração, não legível para o usuário
    },
    { // Parâmetros opcionais
      enableHighAccuracy: true, 
      maximumAge: 30000, // Tempo máximo da posição recebida
      timeout: 27000 // Tempo máximo a se esperar por uma solicitação
    }
)

// Função assíncrona que retorna a posição atual do usuário, e continua retonando no caso do dispositivo se mover, ou caso uma localização mais precisa for recebida
// Recebe os mesmos parâmetros do método acima, também retorna as mesmas informações
let watchID = navigator.geolocation.watchPosition()

// É possível encerrar o rastreio da posição, usando o identificador que a método retorna
navigator.geolocation.clearWatch(watchID)
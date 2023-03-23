// Necessário ativar a API de Maps javascript

var DadosDeCalor = [] // Array com os dados de calor

var Localizacao = new google.maps.LatLng(-20.485832, -54.614765) // Localização, por latitude e longitude

DadosDeCalor.push({ 
    location: Localizacao, 
    weight: 1 // Nível de calor deste objeto
})

var Mapa = new google.maps.Map(document.getElementById('HeatMap'), // Cria um mapa apartir de uma div
{
    center: Localizacao,
    zoom: 3, // Nível de zoom do mapa
    mapTypeId: 'satellite' // Tipo do mapa; google.maps.MapTypeId.HYBRID = Tipo satellite com labels dos nomes das regiões
});

var Gradiente = [
    'rgba(0, 255, 255, 0)',
    'rgba(0, 255, 255, 1)',
    'rgba(0, 191, 255, 1)',
    'rgba(0, 127, 255, 1)',
    'rgba(0, 63, 255, 1)',
    'rgba(0, 0, 255, 1)',
    'rgba(0, 0, 223, 1)',
    'rgba(0, 0, 191, 1)',
    'rgba(0, 0, 159, 1)',
    'rgba(0, 0, 127, 1)',
    'rgba(63, 0, 91, 1)',
    'rgba(127, 0, 63, 1)',
    'rgba(191, 0, 31, 1)',
    'rgba(255, 0, 0, 1)'
]

var CamadaDeCalor = new google.maps.visualization.HeatmapLayer({ // Cria uma camada de calor ao mapa
    data: DadosDeCalor, // Aplica os dados de calor
    radius: 25, // Alcance do calor, quanto maior mais o calor será visível
    opacity: 0.2, // Nível de opacidade
    gradient: Gradiente // Aplicar uma coloração diferente ao calor
})

CamadaDeCalor.setMap(Mapa) // Aplica a camada ao mapa
// Necessário ativar a API de geocodificação

var geocoder = new google.maps.Geocoder // Cria o geolocalizador

geocoder.geocode({
    address: "New York, USA", // Procura pelo nome do estado
    location: { lat: parseFloat(40.714224), lng: parseFloat(-73.961452) } // Procura pela latitude e longitude
}, function (results, status) {
    if (status === 'OK') {
        if (results[0]) {
            console.log(results[0]) // Item achado pela busca
        } else {
            window.alert('No results found')
        }
    } else {
        window.alert('Geocoder failed due to: ' + status)
    }
})
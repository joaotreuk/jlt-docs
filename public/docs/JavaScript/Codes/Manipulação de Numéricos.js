// Converte tempo para decimal
console.log(timeToDecimal('2:49:50'))
function timeToDecimal(t) {
    return t.split(':').map(val => parseInt(val, 10)).reduce(
        (previousValue, currentValue, index) => previousValue + currentValue / Math.pow(60, index)
    )
}

// Converte decimal para tempo
function minTommss(minutes) {
    var min = Math.floor(Math.abs(minutes)), sec = Math.floor((Math.abs(minutes) * 60) % 60)
    return minutes < 0 ? "-" : "" + (min < 10 ? "0" : "") + min + ":" + (sec < 10 ? "0" : "") + sec
}
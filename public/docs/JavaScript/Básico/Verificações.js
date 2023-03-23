// NULL pode ser verificado como se fosse false
if (!VariavelNula) alert('Está nulo!')

// Verifica se string contem caracteres especiais, a lista de caracteres precisa estar na ordem certa
if (/[`!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/.test(Texto)) alert('ERRADO!')

// Padroniza o valor de um input para numérico
var Numero = Number(TxtInput.value.trim().replace(",", "."))
var Numero = Number(Number(TxtInput.value.trim().replace(",", ".")).toFixed(2))
// Dados armazenados por esta API não são apagados automaticamente
// Pode-se obter os cookies do usuário, o armazenamento local você não consegue
// O armazenamento local funciona como um objeto
// Os dados são armazenados como strings

// Seta um item para armazenagem local
localStorage.cor = 'red'
localStorage['cor'] = 'red'
localStorage.setItem('cor', 'red')

// Obtém um item armazenado
localStorage.cor
localStorage['cor']
localStorage.getItem('cor')

// Deletar itens armazenados
localStorage.removeItem('cor') // Deleta um item armazenado
localStorage.clear() // Deleta todos os itens armazenados

// Evento que é chamado quando um item tem seu valor mudado
window.addEventListener('storage', e => {
    e.key // Chave do item, ex: cor
    e.oldValue // Valor antigo
    e.newValue // Valor novo
    e.url // URL em que aconteceu a mudança
    JSON.stringify(e.storageArea) // JSON contendo todos os itens armazenados
})

// Verifica se o navegador é compatível com esta API
try {
    armazenamento = window['localStorage']
    let x = '__teste_armazenamento__'
    armazenamento.setItem(x, x)
    armazenamento.removeItem(x)
    return true
} catch {
    return false
}
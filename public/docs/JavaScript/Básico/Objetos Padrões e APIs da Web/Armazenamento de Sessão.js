// Dados armazenados por esta API são apagados ao fechar a janela do navegador
// O armazenamento de sessão funciona como um objeto
// Os dados são armazenados como strings

// Seta um item para armazenagem
sessionStorage.cor = 'red'
sessionStorage['cor'] = 'red'
sessionStorage.setItem('cor', 'red')

// Obtém um item armazenado
sessionStorage.cor
sessionStorage['cor']
sessionStorage.getItem('cor')

// Deletar itens armazenados
sessionStorage.removeItem('cor') // Deleta um item armazenado
sessionStorage.clear() // Deleta todos os itens armazenados

// Verifica se o navegador é compatível com esta API
try {
    armazenamento = window['sessionStorage']
    let x = '__teste_armazenamento__'
    armazenamento.setItem(x, x)
    armazenamento.removeItem(x)
    return true
} catch {
    return false
}
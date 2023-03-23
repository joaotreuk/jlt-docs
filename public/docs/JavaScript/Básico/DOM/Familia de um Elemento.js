// Filhos de um elemento
elemento.hasChildNodes() // Verifica se elemento tem filhos
elemento.childElementCount // Retorna a soma de filhos deste elemento, não incluí textos e comentários
elemento.childNodes // Retorna uma array com todos os filhos de um elemento, incluí textos e comentários
elemento.children // Retorna um HTMLCollection com todos os filhos de um elemento
elemento.firstChild // Retorna o primeiro filho de um elemento, incluí textos e comentários
elemento.firstElementChild // Retorna o primeiro filho de um elemento, não incluí textos e comentários
elemento.lastChild // Retorna o último filho de um elemento, incluí textos e comentários
elemento.lastElementChild // Retorna o último filho de um elemento, não incluí textos e comentários
while (elemento.firstChild) { elemento.removeChild(elemento.firstChild) } // Remove todos filhos do elemento

// Adicionar um filho a um elemento
elemento.appendChild(elementoFilho) // Adiciona um novo filho ao elemento
elemento.insertBefore( // Insere um filho antes de outro filho
    elementoFilho, // Novo filho
    elemento.firstChild // Filho que antes ocupava a posição do novo filho
)

// Irmãos de um elemento
elemento.previousSibling // Retorna o irmão anterior, incluí textos e comentários
elemento.previousElementSibling // Retorna o elemento irmão anterior, não incluí textos e comentários
elemento.nextSibling // Retorna o próximo irmão, incluí textos e comentários
elemento.nextElementSibling // Retorna o próximo elemento irmão, não incluí textos e comentários

// Pai de um elemento
elemento.parentElement // Pega o elemento pai do elemento
elemento.parentNode // Pega a node pai do elemento
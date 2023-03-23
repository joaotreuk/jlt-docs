// Iniciar elemento
let elemento = document.createElement("INPUT") // Cria um novo elemento, passa o novo elemento para uma variável
elemento = document.getElementById("Elemento") // Selecionar o elemento pela id
let listaDeElementos = document.getElementsByClassName("Classe") // Retorna um HTMLCollection dos elementos com uma determinada classe
listaDeElementos = elemento.getElementsByTagName("DIV") // Obtém uma lista com todos os elementos filhos com a tag especificada
elemento = document.querySelector('#Elemento, div') // Retorna um Node do primeiro elemento usando um seletor CSS.
listaDeElementos = document.querySelectorAll('.Classe') // Retorna um NodeList dos elementos usando um seletor CSS
elementoPai = elemento.closest('p') // Igual o querySelector, porém busca pelos elementos de tags pais do elemento em questão

// Propriedades
elemento.defaultValue // Retorna o valor padrão do elemento, o que é setado pelo atributo value
let info = elemento.dataset.minhaInfo; // Acessando os dados salvos pelos atributos 'data', 'minha-info' é convertida para 'minhaInfo'
elemento.nodeName // Retorna o node name do elemento, retorna DIV por exemplo
elemento.nodeType // Retorna o atributo type do elemento, retorna "text" por exemplo
let altura = elemento.offsetHeight; // Altura do elemento
let largura = elemento.offsetWidth; // Largura do elemento
let listaOpcoes = elemento.options; // Lista de opções selecionadas de uma caixa suspensa múltipla
let x = elemento.scrollLeft; // Obtem o número de pixes em que o elemento foi rolado pela barra de rolagem horizontal
elemento.scrollTop = 0; // Obtem o número de pixels em que o elemento foi rolado pela barra de rolagem vertical, ou rola o elemento até a posição dos pixels
opcao.selected = true; // Se um elemento (por exemplo o OPTION) está selecionado ou não
elemento.src = 'Arquivo.png'; // Caminho de arquivo de imagem
elemento.style.backgroundColor = "red"; // Definindo estilos CSS
elemento.style.minWidth = '200px';
elemento.value = "10"; // Valor do elemento

// Métodos
let dimensao = elemento.getBoundingClientRect(); // Obtem informações sobre posição e tamanho do elemento
elemento.remove(); // Remove o elemento
elemento.scrollIntoView(); // Rola a tela até o topo do elemento
elemento.scrollIntoView(false); // Rola a tela até a parte inferior do elemento

// Manipular os atributos de um elemento
elemento.getAttribute("name") // Obtem o valor de um determinado atributo
elemento.setAttribute("type", "text") // Seta um atributo, exemplo: setAttribute("id", "1")
elemento.removeAttribute("class") // Remove um atributo, pode remover qualquer atributo até os aria-*
atributo = elemento.getAttributeNode("class") // Pega um atributo do elemento e passa para uma variável
elemento.removeAttributeNode(atributo) // Remove um atributo do elemento usando o atributo
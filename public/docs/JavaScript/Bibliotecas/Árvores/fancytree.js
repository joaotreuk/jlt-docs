/*
<div id="Elemento" class="tree-default">
	<ul>
		<li title="Look, a tool tip!"> <!-- Mostra um tool tip on hover -->
			<li class="folder"> <!-- Usa um ícone de pasta no elemento -->
				Torre
				<ul>
					<li> <!-- Filho 1.1 -->
						Pavimento 1
						<ul>
							<li> Apartamento 1 <!-- Filho 1.1.1 -->
						</ul>
				</ul>
				<li class="expanded"> <!-- Raiz já começa expandida -->
					Torre 2
					<ul>
						<li class="active focused"> <!-- Raiz já começa expandida e com foco -->
							Pavimento 1
							<ul>
								<li> Apartamento 1
							</ul>
					</ul>
				</ul>
			</div>
*/

// Exemplo JSON
/*
[
	{"title": "Books", "expanded": true, "folder": true, "children": [
		{"title": "Art of War", "type": "book", "author": "Sun Tzu", "year": -500, "qty": 21, "price": 5.95},
		{"title": "The Hobbit", "type": "book", "author": "J.R.R. Tolkien", "year": 1937, "qty": 32, "price": 8.97},
		{"title": "The Little Prince", "type": "book", "author": "Antoine de Saint-Exupery", "year": 1943, "qty": 21, "price": 5.95},
		{"title": "Don Quixote", "type": "book", "author": "Miguel de Cervantes", "year": 1615, "qty": 21, "price": 5.95}
	]},
	{"title": "Music", "folder": true, "children": [
		{"title": "Nevermind", "type": "music", "author": "Nirvana", "year": 1991, "qty": 21, "price": 5.95},
		{"title": "Autobahn", "type": "music", "author": "Kraftwerk", "year": 1974, "qty": 21, "price": 5.95},
		{"title": "Kind of Blue", "type": "music", "author": "Miles Davis", "year": 1959, "qty": 21, "price": 5.95},
		{"title": "Back in Black", "type": "music", "author": "AC/DC", "year": 1980, "qty": 21, "price": 5.95},
		{"title": "The Dark Side of the Moon", "type": "music", "author": "Pink Floyd", "year": 1973, "qty": 21, "price": 5.95},
		{"title": "Sgt. Pepper's Lonely Hearts Club Band", "type": "music", "author": "The Beatles", "year": 1967, "qty": 21, "price": 5.95}
	]},
	{"title": "Electronics & Computers", "expanded": true, "folder": true, "children": [
		{"title": "Cell Phones", "folder": true, "children": [
			{"title": "Moto G", "type": "phone", "author": "Motorola", "year": 2014, "qty": 21, "price": 224.99},
			{"title": "Galaxy S8", "type": "phone", "author": "Samsung", "year": 2016, "qty": 21, "price": 509.99},
			{"title": "iPhone SE", "type": "phone", "author": "Apple", "year": 2016, "qty": 21, "price": 282.75},
			{"title": "G6", "type": "phone", "author": "LG", "year": 2017, "qty": 21, "price": 309.99},
			{"title": "Lumia", "type": "phone", "author": "Microsoft", "year": 2014, "qty": 21, "price": 5.95},
			{"title": "Xperia", "type": "phone", "author": "Sony", "year": 2014, "qty": 21, "price": 5.95},
			{"title": "3210", "type": "phone", "author": "Nokia", "year": 1999, "qty": 21, "price": 5.95}
		]},
		{"title": "Computers", "folder": true, "children": [
			{"title": "ThinkPad", "type": "computer", "author": "IBM", "year": 1992, "qty": 21, "price": 749.90},
			{"title": "C64", "type": "computer", "author": "Commodore", "year": 1982, "qty": 21, "price": 595.00},
			{"title": "MacBook Pro", "type": "computer", "author": "Apple", "year": 2006, "qty": 21, "price": 1949.95},
			{"title": "Sinclair ZX Spectrum", "type": "computer", "author": "Sinclair Research", "year": 1982, "qty": 21, "price": 529},
			{"title": "Apple II", "type": "computer", "author": "Apple", "year": 1977, "qty": 21, "price": 1298},
			{"title": "PC AT", "type": "computer", "author": "IBM", "year": 1984, "qty": 21, "price": 1235.00}
		]}
	]},
  {"title": "More...", "folder": true, "lazy": true}
]
*/

$(Elemento).fancytree({
	extensions: ["childcounter"], // Extensões a ser usadas
	checkbox: true, // Se mostra ou não os checkboxes, "radio" para mostrar checkboxes do tipo radio, padrão: false
	icon: true, // Se mostra ou não os ícones, padrão: true
	activeVisible: true, // Make sure, active nodes are visible (expanded)
	aria: true, // Enable WAI-ARIA support
	autoActivate: true, // Automatically activate a node when it is focused using keyboard
	autoCollapse: false, // Automatically collapse all siblings, when a node is expanded
	autoScroll: false, // Automatically scroll nodes into visible area
	disabled: false, // Disable control
	focusOnSelect: false, // Set focus when node is checked by a mouse click
	escapeTitles: false, // Escape `node.title` content for display
	generateIds: false, // Generate id attributes like <span id='fancytree-id-KEY'>
	keyboard: true, // Support keyboard navigation
	quicksearch: false, // Navigate to next node by typing the first letters
	rtl: false, // Enable RTL (right-to-left) mode
	titlesTabbable: false, // Node titles can receive keyboard focus
	tooltip: true, // Usa o nome do galho como tooltip
	checkboxAutoHide: undefined, // Display check boxes on hover only
	clickFolderMode: 4, // Ação ao clicar em um galho, 1: Ativa o mesmo, 2: Expande, 3: Ativa e expande, 4: Ativa e no duplo click expande, padrão: 4
	selectMode: 3, // Tipo da seleção de checkboxes, 1: Seleciona um checkbox de cada vez, 2: Seleciona vários checkboxes,
	// 3: Igual o 2, porém também ativa os parentes pela lógica de seleção, padrão: 2
	debugLevel: 4, // 0:quiet, 1:errors, 2:warnings, 3:infos, 4:debug
	minExpandLevel: 1, // 1: root node is not collapsible
	tabindex: "0", // Whole tree behaves as one single control
	idPrefix: "ft_", // Used to generate node idÂ´s like <span id='fancytree-id-<key>'>
	keyPathSeparator: "/", // Used by node.getKeyPath() and tree.loadKeyPath()
	source: { // Pega os dados por um arquivo JSON, ver exemplo.json, também pode passar o JSON direto pela source: source: [{}]
		url: "https://cdn.rawgit.com/mar10/fancytree/72e03685/demo/ajax-tree-products.json"
	},
	lazyLoad: (Evento, Dados) => {
		Dados.result = { // Pega os dados somente quando uma raiz for expandida
			url: "https://cdn.rawgit.com/mar10/fancytree/72e03685/demo/ajax-sub2.json"
		}
	},
	activate: (Evento, Dados) => { // Função a ser chamada quando um galho for clicado
		console.log(Evento.type, Dados.node)
	},
	select: (Evento, Dados) => { // Função a ser chamada quando um checkbox é clicado
		console.log(Dados.node.isSelected()) // Verifica se o checkbox esta selecionado ou não
	}
})

var Arvore = $.ui.fancytree.getTree() // Seleciona a árvore

var Galho = Arvore.findFirst(n => { // Encontra o primeiro galho que se chama "The Hobbit"
	return n.title === "The Hobbit"
})

Galho.toggleSelected() // Faz um toggle no checkbox deste galho

// Remove o fancytree
$(Elemento).fancytree("destroy")

// Convertendo uma matriz para o JSON do fancytree
var Dados = Retorno[5].map(Torre => {
	return {
		title: Torre[1],
		key: `T${Torre[0]}`,
		folder: true,
		expanded: true,
		children: Retorno[6].filter(Pavimento => Pavimento[0] == Torre[0]).map(Pavimento => {
			return {
				title: Pavimento[2],
				key: `P${Pavimento[1]}`,
				folder: true,
				expanded: true,
				children: Retorno[7].filter(Apartamento => Apartamento[0] == Pavimento[1]).map(Apartamento => {
					return {
						title: Apartamento[2],
						key: `A${Apartamento[1]}`,
						folder: true,
						children: Retorno[1].filter(Kit => Kit[0] == Apartamento[1]).map(Kit => {
							return {
								title: Kit[2],
								key: `K${Kit[1]}`,
								selected: Kit[3] == 1
							}
						})
					}
				})
			}
		})
	}
})

// Extensão com contador acima das pastas
$(Elemento).fancytree({
	extensions: ["childcounter"],
	childcounter: {
		deep: true,
		hideZeros: true,
		hideExpanded: true
	}
})
// Instalação
// <script src="~/Scripts/chart-2.9.3.js"></script>
// npm install chart.js --save

// Definindo o tamanho e altura para o gráfico
// <canvas id="meuGrafico" style="max-height:400px; max-width:400px; height:400px; width:400px"></canvas>

import Chart from 'chart.js';

// Definindo os dados
let dados = {
    // Lista de labels do eixo x
    labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
    // Lista de base de dados
    datasets: [
        {
            label: 'Produção', // Legenda desta base, sua cor é a primeira cor da base
            data: [12, 19, 3, 5, 2, 3], // Dados
            backgroundColor: 'rgba(255, 99, 132, 0.2)', // Define uma cor de fundo geral, ou uma lista de cores de cada item
            borderColor: [ // Define uma cor de borda geral, ou uma lista de cores de cada item
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1, // Tamanho da borda
            showLine: false // Se mostra ou não as linhas deste dataset
        }
    ]
};

// Definindo opções
let opcoes = {
    // Animação, o conteudo precisa estar visível para mostrar animação
    animation: {
        duration: 0, // Define o tempo das animações em milissegundos. Padrão: 1000
        easing: 'easeInElastic', // Define ao tipo da animação utilizado. Padrão: 'easeOutQuart'
        // Função chamada a cada troca de frame
        onAnimationProgress: animacao => {
            animacao.animationObject.chart; // Objeto do gráfico
            animacao.animationObject.currentStep; // Número do frame atual da animação
            animacao.animationObject.easing; // Tipo da animação
            animacao.animationObject.numSteps; // Número de frames da animação
            animacao.animationObject.render(); // Função de renderização
        }, 
        onAnimationComplete: () => {}, // Função chamada quando a animação é completada
    },
    aspectRatio: 1, // Nível de proporção retangular, 1 indica que é um quadrado, 2 que a largura é o dobro da altura, etc. Padrão: 2
    devicePixelRatio: 2, // Define a proporção de pixels da imagem. Padrão: window.devicePixelRatio
    elements: {
        line: {
            tension: 0 // Nível de curvatura das linhas do gráfico de linha, deixar como 0 faz serem linhas retas
        }
    },
    hover: {
        animationDuration: 0 // Define o tempo em milissegundos das animações do tooltip
    },
    layout: {
        // Define o padding do gráfico
        padding: {
            left: 50,
            right: 0,
            top: 0,
            bottom: 0
        }
    },
    // Legendas
    legend: {
        align: 'start', // Define o alinhamento. Padrão: 'center'
        display: false, // Se mostra ou não as legendas. Padrão: true
        fullWidth: false, // Se permite as legendas serem quebradas para outra linha ou não. Padrão: true
        labels: {
            boxWidth: 20, // Tamanho da caixa colorida. Padrão: 40
            fontColor: 'blue', // Define a cor do texto
            fontFamily: 'Arial', // Tipo da fonte
            fontSize: 14, // Tamanho da fonte. Padrão: 12
            fontStyle: 'bold', // Estilo da fonte
            padding: 10, // Espaçamento entre linhas
            usePointStyle: true, // Se usa um círculo ao invés da caixa ou não
            // Função de geração de cada item da legenda
            generateLabels: (itemLegenda) => {
                legenda.fillStyle; // Cor da caixa da legenda
                legenda.hidden; // Se a legenda será exibida com um risco por cima do texto ou não
                legenda.lineCap; // Relacionado a box border
                legenda.lineDash; // Relacionado a box border
                legenda.lineDashOffset; // Relacionado a box border
                legenda.lineJoin; // Relacionado a box border
                legenda.lineWidth; // Tamanho da box border
                legenda.pointStyle = ''; // Estilo do círculo no caso de ter definido para usar o mesmo, pode-se usar uma imagem
                legenda.rotation = 60; // Rotação em graus do círculo no caso de ter definido para usar o mesmo
                legenda.strokeStyle = 'red'; // Cor de derrame da caixa da legenda
                legenda.text; // Texto da legenda
            },
            filter: (legenda, dados) => {} // Filtra itens da legenda
        },
        position: 'bottom', // Define a posição das legendas
        reverse: true, // Se as legendas são invertidas ou não. Padrão: false
        rtl: true, // Se as legendas são renderizadas da direita para a esquerda. Padrão: false
        textDirection: '', // Direção do texto
        onClick: (e, legendItem) => {}, // Ao clicar em uma legenda
        onHover: () => {},
        onLeave: () => {} // Quando o mouse saí de uma legenda
    },
    maintainAspectRatio: false, // Define se a proporção é mantida ou não, se um tamanho for definido manualmente deve-se colocar como false, padrão: true
    responsive: false, // Define se o gráfico é responsivo ou não, padrão true
    responsiveAnimationDuration: 1, // Tempo que demora para re-animar o gráfico após um evento de redefinição do tamanho do gráfico, padrão: 0
    scales: {
        // Eixo Y
        yAxes: [{
            ticks: {
                beginAtZero: true // Define se o valor começa ou não no 0, padrão: false
            }
        }]
    },
    showLines: false, // Se mostra ou não as linhas de todos os datasets
    // Título do gráfico
    title: {
        display: true, // Define se é exibido ou não, padrão: false
        fontColor: 'red', // Cor da fonte
        fontFamily: 'Arial', // Tipo do texto
        fontSize: 14, // Tamanho da fonte do texto
        fontStyle: 'normal', // Estilo da fonte
        lineHeight: 1.2, // Altura das linhas do texto
        padding: 10, // Espaçamento antes e depois do título
        position: 'top', // Posição
        text: 'Meu gráfico' // Texto
    },
    // Exibição ao passar o mouse por cima de item do gráfico
    tooltips: {
        backgroundColor: 'rgba(0, 0, 0, 0.8)', // Cor de fundo
        bodyAlign: 'left', // Alinhamento do corpo
        bodyFontColor: 'red', // Cor da fonte do tcorpo
        bodyFontFamily: 'Arial', // Tipo do texto do corpo
        bodyFontSize: 14, // Tamanho da fonte do texto do corpo
        bodyFontStyle: 'bold', // Estilo da fonte do texto do corpo
        bodySpacing: 2, // Espaçamento entre cada lnha do corpo
        borderColor: 'rgba(0, 0, 0, 0)', // Cor da borda
        borderWidth: 0, // Tamanho da borda
        callbacks: {
            title: () => 'Exemplo', // Define o título do tooltip
            label: (tooltipItem, data) => { // Evento chamado para a informação do tooltip
                let valor = data.datasets[tooltipItem.datasetIndex].data[tooltipItem.index],
                    label = data.labels[tooltipItem.index]

                return label + ': ' + valor + ' produtos'
            }
        },
        caretPadding: 2, // Distância entre a seta do tooltip e o item que o tooltip representa
        caretSize: 3, // Tamanho da seta do tooltip
        cornerRadius: 6, // Arredondamento dos cantos do tooltip
        displayColors: true, // Se verdadeiro, as caixas de cores são mostradas no tooltip
        enabled: false, // Se usa tooltips ou não
        footerAlign: 'left', // Alinhamento do rodapé
        footerFontColor: 'red', // Cor da fonte do rodapé
        footerFontFamily: 'Arial', // Tipo do texto do rodapé
        footerFontSize: 14, // Tamanho da fonte do texto do rodapé
        footerFontStyle: 'bold', // Estilo da fonte do texto do rodapé
        footerMarginTop: 10, // Margem acima do rodapé
        footerSpacing: 2, // Espaçamento entre cada lnha do rodapé
        intersect: false, // Define se mostra apenas os itens que são interceptados pela posição do mouse ou não, padrão: true
        mode: 'index', // Quais itens que apareceram. Padrão: 'nearest', apenas o item mais próximo
        // 'index' os itens representados pelo eixo x em que o mouse está por cima
        // 'x' igual o anterior, porém o raio de alcance é menor
        // 'y' os itens representados pelo eixo y em que o mouse está por cima
        // 'dataset' todos os itens do dataset atual
        // 'point' mostra todos os itens em que o mouse está por cima
        multiKeyBackground: '#fff', // Cor para desenhar atrás das caixas coloridas quando vários itens estiverem no tooltip
        position: 'average', // Posição do tooltip
        rtl: false, // Verdadeiro para renderizar as legendas da direita para a esquerda
        textDirection: '', // Isso forçará a direção do texto `'rtl'
        titleAlign: 'left', // Alinhamento do título
        titleFontColor: 'red', // Cor da fonte do título
        titleFontFamily: 'Arial', // Tipo do texto do título
        titleFontSize: 14, // Tamanho da fonte do texto do título
        titleFontStyle: 'bold', // Estilo da fonte do texto do título
        titleMarginBottom: 10, // Margem abaixo do título
        titleSpacing: 2, // Espaçamento entre cada lnha do título
        xPadding: 3, // Espaçamento da esquerda e direita
        yPadding: 3, // Espaçamento de cima e baixo
        itemSort: () => {}, // Função para definir a ordernação dos itens
        filter: () => {}, // Função para fltrar os itens
    },
    legendCallback: function(chart) {},
    onResize: () => {}, // Função chamada quando o tamanho do gráfico é redefinido, padrão: null
}

// Inicializa um novo gráfico
let grafico = new Chart(meuGrafico, {
    type: 'bar', // Define o tipo do gráfico, 'pie', 'line'
    data: dados, // Define os dados
    options: opcoes
});

// Definindo padrões
Chart.defaults.global.defaultFontColor = 'red'; // Define a cor padrão para todos os textos dos gráficos. Padrão: '#666'
Chart.defaults.global.defaultFontFamily = ''; // Define o fontFamily padrão
Chart.defaults.global.defaultFontSize = 14; // Define o tamanho padrão das fontes. Padrão: 12
Chart.defaults.global.defaultFontStyle = 'bold'; // Define o estilo padrão das fontes. Padrão: normal
Chart.defaults.global.hover.mode = 'nearest'; // É possível definir um padrão para cada opção

/*-------------------- SUBSTRINGS --------------------*/

-- Seleciona apenas um número x de caracters começando pela esquerda
SELECT LEFT('SQL Tutorial', 3)

-- Selecionar a parte específicada do nome de um objeto (estes nomes são determinados pelos caracteres de ponto)
-- Não funcionará para strings com mais de 4 nomes separados
SELECT PARSENAME('NomeServidor.NomeBanco.NomeEsquema.NomeTabela', 1) -- Seleciona o nome do objeto
SELECT PARSENAME('NomeServidor.NomeBanco.NomeEsquema.NomeTabela', 2) -- Seleciona o nome do esquema
SELECT PARSENAME('NomeServidor.NomeBanco.NomeEsquema.NomeTabela', 3) -- Seleciona o nome do banco de dados
SELECT PARSENAME('NomeServidor.NomeBanco.NomeEsquema.NomeTabela', 4) -- Seleciona o nome do servidor
SELECT PARSENAME('17.333', 1) -- Selecionar a parte específicada de um número

-- Seleciona apenas um número x de caracters começando pela direita
SELECT RIGHT('SQL Tutorial', 3)

-- Substitui parte de uma string, (String para manipulacao, numero de chars a serem substituidos, posicao da string para comecar, valor a ser alocado)
SELECT STUFF('String', 1, 1, '')

-- Seleciona apenas uma parte da string, no exemplo abaixo pega apenas 'Exe'
SELECT SUBSTRING('Exemplo', 1, 3)

-- Substituição
SELECT LOWER(Texto) -- Deixa todos caracteres do texto em letras minúsculas
SELECT REPLACE('abcdefghicde', 'cde', 'xxx') -- Substitui parte de uma string
SELECT TRANSLATE('2*[3+4]/{7-2}', '[]{}', '()()') -- Substitui cada caracter da segunda expressão pelo seu equivalente na terceira, retorno: 2*(3+4)/(7-2)
SELECT UPPER(Texto) -- Deixa todos caracteres do texto em letras maiúsculas

-- Transformação
SELECT CONCAT('Joao', ' ', 'Treuk') -- Junta n variáveis em uma só string
SELECT CONCAT_WS(' ', 'Meu', 'exemplo') -- Igual a função anterior, porém o primeiro parâmetro é o separador entre cada variável
SELECT QUOTENAME('Exemplo') -- Adiciona um colchete no início e fim da string
SELECT QUOTENAME('Exemplo', '"') -- Adiciona um caractere específico no início e fim da string
SELECT REVERSE('Exemplo') -- Inverte uma string
SELECT value FROM STRING_SPLIT('Lorem ipsum dolor sit amet.', ' ') -- Quebra uma string em uma tabela, esta tabela contém a coluna value que é cada pedaço da string que foi quebrada

-- Replicação
SELECT REPLICATE(0, 15) -- Replica o número 0 quinze vezes
SELECT SPACE(10) -- Replica o caractere espaço n vezes

-- Útil
SELECT '''' -- Usar ' em uma string

-- Tamanho
SELECT DATALENGTH('Exemplo ') -- Retorna o tamanho do texto, inclui espaços a direita
SELECT LEN('Exemplo') -- Retorna o tamanho do texto, não inclui espaços a direita

-- Índice de caractere
SELECT CHARINDEX('Exemplo', 'Meu Exemplo') -- Retorna a posição inicial de um texto em relação a outro
SELECT CHARINDEX('Exemplo', 'Meu Exemplo', 2) -- Indica a posição que começa a procurar
SELECT PATINDEX('%emp%', 'Exemplo') -- Retorna a posição inicial de um padrão (igual o do operador LIKE) em relação a uma string, se não encontrar o padrão retorna 0

-- Remoção de espaços
SELECT LTRIM(Texto) -- Remove os espaços apenas no início do texto
SELECT RTRIM(Texto) -- Remove os espaços apenas no final do texto
SELECT TRIM(Texto) -- Remove os espaços no inicio e no fim do texto

-- Sonoridade
SELECT DIFFERENCE('Juice', 'Jucy') -- Compara o código SOUNDEX de duas strings, retorna um inteiro de 0 a 4, sendo que quanto maior o valor mais parecido é a sonoridade dos textos
SELECT SOUNDEX('Juice') -- Retorna um código baseado na sonoridade quando a string é falada

-- Controle binário
SELECT ASCII('Exemplo') -- Seleciona o código ASCII do primeiro caractere
SELECT CHAR(69) -- Selecione o caractere que representa o código ASCII passado
SELECT NCHAR(200) -- Seleciona o caractere que representa o código Unicode passado
SELECT UNICODE('Exemplo') -- Seleciona o código Unicode do primeiro caractere
Instalação no Windows
1. Baixar no site, descompactar e colocar os arquivos de prefêrencia na pasta ‘C:\php8’;
2. Renomear o arquivo ‘php.ini- developement’ para ‘php.ini’;
3. Editar o arquivo de configuração ‘php.ini’;
• Descomentar o campo de extenções ‘extension_dir’;
• Adicionar para o campo ‘session.save_path’ a pasta de arquivos temporários do Windows, ex: "C:\Windows\Temp";
• Descomentar as extenções que deseja utilizar, ex: ‘extension=pdo_pgsql’;

Configurando para ser utilizado no Apache
1. Adicionar o diretório inicial ‘index.php’ ou o arquivo inicial que preferir na linha: ‘DirectoryIndex index.php index.html’;
2. Adicionar o código abaixo no final do arquivo de configuração ‘httpd.conf’ do Apache:
# PHP8 module
LoadModule php_module "c:/php8/php8apache2_4.dll" # Caminho da dll na pasta do PHP
AddType application/x-httpd-php .php
PHPIniDir "C:/php8" # Caminho da pasta do PHP

<?php
/* Inicia um bloco de código PHP */

// Imprimindo código HTML
Echo("<h1>Olá PHP</h1>"); // Imprime a partir de uma string
Echo "<h1>Olá PHP</h1>"; // Simplificado
Print('<h1>Teste</h1>'); // Igual o anterior
Print_r($variavel); // Imprime qualquer tipo de variável

// Gerenciando variáveis
$definido = isset($_SESSION['nome']); // Retorna se uma variável está definida ou não
unset($variavel); // Limpa da memória uma variável

// Estruturas de controle
if (1 == 1) {} else {} // Condição
For($i = 1; $i <= 10; $i++) {} // Repetição for
While(1 == 1) {} // Repetição while

// Quebra de fluxo
break; // Encerra o bloco de comando
continue; // Avança para o próximo loop do bloco de comando
exit; // Termina o script PHP

// Sub-rotinas
function soma($numero, $numero2) {}
function soma($numero) { return $numero++; } // Funções com retorno

// Operadores
$numero = 1 + 2 / 3 * 4 - 5; // Aritiméticos
$var1 = $var2 += $var3 -= $var4 /= $var5 *= $var6; // Atribuição
$retorno = 1 == 2 != 3 < 4 > 4 <= 5 >= 0; // Comparação
$numero++; $numero--; // Incremento

// Imprime um código HTML contendo informações sobre o PHP instalado
phpinfo();

/* Termina o bloco de código PHP */
?>
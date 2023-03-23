# Site em que as bibliotecas NPM são convertidas p/ browser
# unpkg.com

# Instalar o browserify, usar o -g porque sim
npm install browserify -g

# Converte um arquivo javascrip npm para ser usado em browser (na pasta dist)
browserify ArquivoNpm.js --outfile dist/ArquivoBrowser.js
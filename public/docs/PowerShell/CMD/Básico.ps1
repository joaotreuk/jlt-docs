# Para executar o cmd em uma pasta basta escrever "cmd" na barra de caminho e apertar "Enter"
# Copiar conteúdo: Clicar botão direito e selecionar tudo, então clicar com o botão direito de novo
# Finalizar um comando: CTRL + C

# Desligar a exibição dos comandos à medida que eles são executados em um script
# O símbolo '@' impede a linha atual de ser exibida no terminal
@echo off

# Navegar para uma pasta
pushd D:\Pasta

# Executar arquivo bat
run.bat

# Limpar tela
cls
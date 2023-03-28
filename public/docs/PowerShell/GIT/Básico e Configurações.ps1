# Para executar um comando git deve-se estar na pasta em que o mesmo foi criado

# HEAD, é a definição para a ramificação atual no commit atual
HEAD
HEAD^ # HEAD anterior da ramificação
HEAD~2 # HEAD duas vezes atrás, e assim por diante
HEAD@{1} # HEAD posterior da ramificação
ORIG_HEAD # Equivalente ao HEAD@{1}
HEAD@{2} # HEAD duas vezes para frente, e assim por diante

# Abreviações
# @ é HEAD
# -A é --all
# -c é --reedit-message
# -C é --reuse-message
# -d é --delete
# -D é --delete --force
# -f é --force
# -h é --help
# -m é --message
# -u é --update

# Status geral e ações que podem ser feitas a seguir
git status

# Configurações
git config --global user.email "you@example.com" # Define o e-mail da conta
git config --global user.name "João Treuk" # Define o nome do usuário da conta

# Ver a versão atual do GIT
git --version

# Ver ajuda para comandos
git --h
git comando -h

# Exibir uma contagem de número de objetos e o espaço consumido
git count-objects [-v] [-H | --human-readable]

# Vim
:x # Salvar e sair
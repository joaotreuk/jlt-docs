# Padronização para commits:
# Ação + Nome da tela/relatório
# Segundo parâgrafo com a descrição do que foi feito
# Exemplo:
# 2.2.2.2 - Correção relatório Planejamento Produção
# Foi alterado isso aqui porque está ocorrendo isso aqui

# Adicionar arquivos para o próximo commit/stash
git add Pasta/NomeArquivo.txt  # Adicionar um arquivo
git add -A # Adiciona todos arquivos (novos, modificados e deletados)
git add . # Adiciona todos arquivos (novos, modificados e deletados) da pasta atual
git add * # Usar o identificador shell '*' para adicionar todos os arquivos (novos, modificados e deletados) da pasta atual (exceto arquivos que começam com '.')
git add -u # Adiciona todos arquivos modificados ou deletados
git add --ignore-removal .  # Adiciona todos arquivos novos ou modificados
git add -A -f # Usado para adicionar arquivos que anteriormente seriam ignorados
git stage Pasta/NomeArquivo.txt # Sinônimo do 'add'

# Restauração ou remoção de arquivos em commits
git restore Pasta/NomeArquivo.txt # Restaurar fisicamente o arquivo para a sua versão no HEAD atual
git restore --staged Pasta/NomeArquivo.txt # Remover um arquivo que foi adicionado para o próximo commit

# Deletar arquivos de um repositório e excluir suas referências
git rm "Arquivo.txt" # Remove um arquivo específico
git rm "Pasta" -r # Remove uma pasta com todos os arquivos dentro
git rm "Arquivo.txt" -f # Forçar remoção
git add -u :/ # Remover a referência de tudo que já tenha sido removido fisicamente

# Controle de commits
git commit -m "first commit"
git commit -m "My head line" -m "My content line" # Mensagem com vários parágrafos
git commit --amend -m "Nova mensagem" # Altera a mensagem do último commit, após isso deve-se fazer um push -f
git commit --amend --author="João Treuk" # Alterar o nome do usuário do último commit
git commit -C ORIG_HEAD # Copia a mensagem de um commit em um HEAD específico
git commit -c ORIG_HEAD # Igual o anterior, porém abre o Vim para poder fazer uma modificação na mensagem

# Modificar ou deletar commits anteriores
git reset # Mostra o que será resetado
git reset @^ # Igual o anterior porém referênciando outro HEAD, se houver commits não empurados para o servidor eles seram desfeitos
git reset --soft @^ # Alterar a referência do HEAD, avançando ou regresando na ramificação, sem modificar os arquivos
git reset --hard @^ # Igual o anterior, porém os arquivos também são modificados de acordo com o novo HEAD
git reset --hard # Desfaz as mudanças feitas no HEAD atual
git reset --hard 4f0fc5306e74c8b40c7638814f50b8db6543f616 # Resetar o HEAD para um commit que foi deletado, usando o hash SHA do mesmo
git reset @ Pasta/NomeArquivo.txt # Restaura ou remove o arquivo com base na referência do HEAD atual, mantendo o arquivo fisicamente

# Criar um stash dos itens adicionados
# Um stash é como se fosse uma bolha local segurando atualizações, que pode ser estourada para colocar as atualizações na ramificação atual
# Exemplo de uso: Foi feita uma atualização, porém a atualização deve ser aplicada a uma outra ramificação, então cria-se um stash segurando as atualizações, para então mudar para a ramificação em que deseja aplicar de fato as atualizações
git stash
git stash apply # Aplicar um stash para a ramificação atual
git stash clear # Deletar todos os stashs
git stash drop 0 # Deletar um stash pelo seu id
git stash show # Mostrar mudanças do stash

# Logs referentes aos commits realizados para a ramificação atual
git log # Log completo, incluíndo data do commit, autor, descrição e usuário
git log --oneline # Log simplificado, mostrando apenas a descrição e o código dos commits
git log --graph # Adiciona um detalhamento gráfico extra para o log
git log -2 # Pega apenas os últimos 2 commits
git log > GitLog.txt # Criar um arquivo .txt com os logs
git log --oneline --graph -2 # Combinação de comandos

# Limpar arquivos desnecessários e otimizar o repositório local
git gc
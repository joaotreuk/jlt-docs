<# Ramificações
  Ramificações servem para dividir o trabalho, por exemplo, o desenvolvedor 1 está trabalhando em uma ramificação e o desenvolvedor 2 em outra,
  quando o trabalho estiver pronto o desenvolvedor 1 faz um merge de sua ramificação com a ramificação master, que usualmente é a ramificação
  principal nos projetos
#>

# Inicia um novo repositório GIT para um projeto
git init

# Adiciona a origem (servidor) para um novo repositório local
git remote add origin http://url-do-repositorio.git

# Copia os dados do repositório para o local atual
git clone http://url-do-repositorio.git # Clona a ramificação master
git clone --branch nome-da-ramificacao http://url-do-repositorio.git # Clona uma ramificação específica

# Atualizar a referência de ramificações remotas, obtém o trabalho que está salvo apenas remotamente
git fetch origin #Atualizar a referência de todos as ramificações
git fetch origin nome-da-nova-ramificacao # Atualizar a referência de apenas uma ramificação específica

# Gerenciar ramificações
git branch # Ver uma lista de todas ramificações locais
# É uma boa ideia deletar branchs que já foram incorporadas na master para reduzir o clutter no remote server
# Não é uma boa ideia deletar branchs que não foram incorporadas na master, mesmo se for algo que foi descartado, é sempre bom
# manter referencia
git branch -a # Lista todas ramificações locais e remotas
git branch -d nome-da-ramificacao # Deletar uma ramificação local, apenas se a mesma já foi fundida em outra ramificação
git branch -D nome-da-ramificacao # Deletar uma ramificação local independente se a mesma foi fundida a outra ramificação ou não
git branch -m nome-da-ramificacao nome-da-nova-ramificacao # Copiar uma ramificação
git branch nome-da-ramificacao # Cria uma nova ramificação

# Alternar entre ramificações ou desfazer mudanças na ramificação local
git checkout # Verifica se o brach atual está atualizado com a origem
git checkout nome-da-ramificacao
git checkout -- nomeArquivo.txt # Desfazer as mudanças locais de um arquivo
git checkout -b nova-ramificacao # Abreviação do comando 'git branch nome-da-ramificacao' seguido de 'git checkout nome-da-ramificacao'
git checkout -b nome-da-ramificacao 4f0fc5306e74c8b40c7638814f50b8db6543f616 # Recuperar uma ramificação que foi deletada localmente
git checkout --track origin/nome-da-ramificacao # Cria um ramificação local a partir de uma ramificação remota referênciada, com o mesmo nome dela

# Analisar diferenças entre a ramificação de trabalho
git diff # Ver todas as diferenças
git diff Pasta/NomeArquivo.txt # Ver as diferenças de um arquivo específico

# Empura a versão local para a remota, fazendo a versão remota da ramificação avançar na história até a versão local da ramificação
git push
# Deleta uma ramificação no servidor
git push -d origin nome-da-ramificacao
# Força o empurar, usado quando se está modificando no servidor
# Usado por exemplo ao mudar a mensagem de um commit, ou quando se está corrigindo ou deletando commits
git push -f
# Adicionar uma ramificação local para o servidor
git push origin nome-da-ramificacao
git push --set-upstream origin nome-da-ramificacao # Empurar uma nova ramificação, que não está regitrada no servidor
git push -f --set-upstream origin nome-da-ramificacao # Forçar empurar a nova ramificação, para o caso de estar restaurando uma ramificação antiga

# Obtem os dados do servidor para atualizar o repositório local
git pull

# Fundir a ramificação atual com outra ramificação
# Após fazer a fusão basta empurar as mudanças locais para adicionar os commits da ramificação pega no server
git merge nome-da-outra-ramificacao
# Não escrever no histórico todos os commits feitos na ramificação
# Apenas cria um único commit com todas as modificações realizadas na ramificação (Este commit deve ser realizado por comando após este)
git merge --squash nome-da-outra-ramificacao
# Abortar o merge sendo executado atualmente, as mudanças não são desfeitas
git merge --abort

# Muda a base em relação a outra ramificação
# Exemplo: a ramificação foi baseado no commit 'm2' do master, só que depois o master foi atualizado para o 'm3', assim ela receberá as mudanças do 'm3' para a base
# Isso pode causar problemas ao mudar a base de uma ramificação remota (em relação ao trabalho local de um colega de equipe)
git rebase nome-da-outra-ramificacao

# Ver ramificações que foram deletadas sem terem sido fundidas a outra ramificação
# Para recuperar ramificações deletadas deve-se fazer um reset usando o hash SHA, este que pode ser obtido pelos comandos abaixo
git fsck --lost-found
ls .git/lost-found/commit/ | xargs -I{} git log -1 {} # Ver a descrição do último commit da ramificação apagada

# Logs de mudança de referência do HEAD, mostrando o código do HEAD atual e os códigos dos HEADs anteriores
git reflog
/*
Como forma alternativa de restauração de banco é possível criar um script do mesmo e rodalo em outro servidor

Passo a passo criar script:

1. No menu "Pesquisador de Objetos" clicar com o botão direito em um determinado banco
2. Em seguida expandir "Tarefas", então clicar em "Gerar Scripts..."
3. No menu "Escolher Objetos" é possível escolher as tabelas e exibições que serão geradas no script ou
se será feito um script do banco inteiro
4. No menu "Definir Opções de Script" é possível escolher a forma que o script será salvo;
   - Clicando em "Avançado" é possível definir várias opções para o script como:
       * Opção para escolher se o script será de CREATE, DROP ou DROP and CREATE
       * Opção para escolher a versão do SQL Server em que o script será rodado
       * Opção para escolher se os logins e owner sdo SQL seram adicionados também ao script
       * Opção para escolher se os scripts serão apenas de criação dos objetos (tabelas, exibições, etc...), se incluiram 
       também os scripts de insersão dos dados destes objetos, ou se será um script apenas para inserir estes dados
       * Opção para escolher se o script também incluirá os gatilhos e índices
5. Escolhendo o menu "Salvar Scripts" fara o script ser salvo
*/
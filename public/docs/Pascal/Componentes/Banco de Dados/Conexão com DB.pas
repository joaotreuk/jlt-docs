ZConnection

Propriedades:
  - AutoCommit: Para comitar automaticamente as querys executas ou não;
  - Connected: Define a conexão como conectada;
  - Database: Nome do banco de dados;
  - HostName: Nome do servidor do banco de dados;
  - LibraryLocation: Caminho até a dll do Zeos Access, exemplo: 'D:\Delphi\ntwdblib.dll';
  - Name: Nome identificador, exemplo: cBanco;
  - Password: Senha do banco de dados;
  - Port: Porta usada pelo banco de dados, usualmente 1433;
  - Protocol: Define qual o provedor do SQL está sendo usado, exemplo: mssql = SQL Server, postgresql;
  - SQLHourGlass: Mostrar um ícone de ampulheta enquando uma query é executada ou não;
  - TransactIsolationLevel: "tiReadCommitted" para ler apenas dados comitados;
  - User: Usuário do banco de dados;

Métodos:
  - .Commit -> Comita uma transação;
  - .Rollback -> Cancela uma transação;
  - .StartTransaction -> Inicia uma transação;
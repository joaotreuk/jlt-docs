// Cria e inicia uma transação, o nome da transação é opcional
SqlTransaction transacao = conexao.BeginTransaction("Nome");

// Métodos
transacao.Commit(); // Commita a transação
transacao.Rollback(); // Reverte as ações feitas durante a transação
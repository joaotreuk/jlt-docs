/*
    -- Bakcup Manual
    1. Clicar com o botão direito no banco de dados
    2. Clicar em tarefas -> fazer backup
    3. É possível adicionar e remover o local de destino no inferior do menu "General"
    4. Clicar em OK
*/

BACKUP DATABASE Nome_Do_Banco 
TO DISK = 'C:\Backup\Nome_Do_Banco_YYYY_MM_DD_HHmm.bak'  -- Local de destino, 
-- Podesse fazer backup para uma pasta compartilhada de outro computador: '\\OutroComputador\PastaCompartilhada\Nome_Do_Banco_YYYY_MM_DD_HHmm.bak'
WITH FORMAT -- FORMAT: Substitui arquivos que possuam o mesmo nome;
			-- NOFORMAT: É o padrão, adiciona o backup atual a outros backups do mesmo nome, duplica os dados
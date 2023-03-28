-- Procedimento armazenado para envio de e-mail
msdb.dbo.sp_send_dbmail 
	@profile_name = 'E-mail automatico',
	@recipients = 'joaotreuk@gmail.com', -- Destinatário do e-mail
	@subject = 'Meu Título', -- Título do e-mail
	@body = 'Exemplo de e-mail automatico', -- Corpo do e-mail, pode ser um HTML
	@body_format = 'HTML' -- Formatação do corpo do e-mail, exemplo: 'HTML', padrão: NULL
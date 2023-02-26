using System.Net;
using System.Net.Mail;

// Mensagem de e-mail
MailMessage email = new MailMessage();
email.Body = "Exemplo"; // Define o corpo do e-mail
email.From = new MailAddress("joaotreuk@outlook.com"); // Endereço do remetente
email.IsBodyHtml = true; // Define se o corpo do e-mail é um HTML ou não, padrão: false
email.Subject = "Título"; // Define o título do e-mail
MailAddressCollection destinatarios = email.To; // Lista de destinatários

// Enviar e-mails usando o protocolo SMTP
SmtpClient smtp = new SmtpClient();
SmtpClient smtp = new SmtpClient("mail.lavrasul.com.br", 587); // Host, Port
smtp.Credentials = new NetworkCredential("joaotreuk@outlook.com", "Senha"); // Define as credenciais para o servidor de e-mail
smtp.EnableSsl = true; // Define se é usado o protocolo SSL para criptografar a conexão ou não, padrão: false
smtp.DeliveryMethod = SmtpDeliveryMethod.Network; // Define como os e-mails são entregues
smtp.Host = "mail.lavrasul.com.br"; // Define o host do servidor de e-mail
smtp.Port = 587; // Define a porta do servidor de e-mail
smtp.UseDefaultCredentials = true; // Se usa as credenciais padrão ou não, padrão: false

using (email)
{
    // Adiciona um destinatário
    email.To.Add("joaotreuk@outlook.com");

    using (smtp)
    {
        // Envia o e-mail
        await smtp.Send(email);
        await smtp.SendMailAsync(email); // Envia de forma assíncrona
    }
}
IdMessage

Atributos:
- Body: Corpo do e-mail;
    - .Add('Texto') -> Adiciona um texto para o corpo;
- From: Dados do enviador do e-mail;
    - Address: E-mail do enviador;
- MessageParts: Anexos do e-mail;
    - TIdAttachmentFile.Create(esteElemento.MessageParts, caminhoArquivo) -> Adiciona um novo arquivo anexado;
- Recipients: Dados do receptor do e-mail;
    - EMailAddresses: E-mail do receptor;
- ReplyTo: Dados do respondido do e-mail;
    - EMailAddresses: E-mail do respondido;
- Subject: Título do e-mail;
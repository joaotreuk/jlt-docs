IdSMTP

Atributos:
- AuthType: satDefault;
- Host: Endereço de hospedagem do e-mail do enviador;
- IOHandler: Elemento manipulador de I/O (IdSSLIOHandlerSocketOpenSSL);
- Name: Nome identificador, exemplo: isEnviador;
- Password: Senha do e-mail do enviador;
- Port: Porta, padrão: 587;
- Username: Usuário do servidor de hospedagem;
- UseTLS: utUseExplicitTLS;

Métodos:
- .Connect -> Conecta o servidor de e-mail;
- .Connected -> Retorna está conectado ou não com o servidor de e-mail;
- .Disconnect -> Desconecta do servidor de e-mail;
- .Send(Email) -> Envia um e-mail, o elemento do e-mail é o IdMessage;
// JWT funciona como um autentificador
// O aplicativo client envia um usuário e senha para ele e caso estejam corretos o JWT retorna um token, que então o app client pode usar para ter permissão de requisições que
// requerem autenticação

// Nas requisições deve-se passar no cabeçalho o token no seguinte formato
// "Authorization": "Bearer meuToken"
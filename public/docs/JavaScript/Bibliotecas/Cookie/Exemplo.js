// <script src="js.cookie.js"></script>

// Define um cookie Usuario com o valor "Joao" que expira em 14 dias
Cookies.set('Usuario', "Joao", { expires: 14 })

// Pega um cookie armazenado
Cookies.get('Usuario')

// Remove um cookie armazenado
Cookies.remove('Cracha')
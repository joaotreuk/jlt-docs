// As configurações de inicialização são geradas pelo próprio Firebase
const firebaseConfig = {
    apiKey: "",
    authDomain: "",
    databaseURL: "",
    projectId: "",
    storageBucket: "",
    messagingSenderId: "",
    appId: "",
    measurementId: ""
}

// Inicializa a API
firebase.initializeApp(firebaseConfig)

// Obtém a API de autenticação
const auth = firebase.auth()

// Obtém o provedor de autenticação, exemplo: Google, Facebook, etc.
const provider = new firebase.auth.GoogleAuthProvider()

// Evento chamado no início e sempre que o estado da autenticação do usuário for mudada
auth.onAuthStateChanged(firebaseUser => {
    // Se a autenticação for nula é chamado o provedor desejado
    if (!firebaseUser) {
        // Chama o provedor a partir de um redirecionamento de página
        auth.signInWithRedirect(provider)

        // Chama o provedor a partir de um popup
        auth.signInWithPopup(provider).then(result => {
            //This gives you a Google Access Token. You can use it to access the Google API.
            var token = result.credential.accessToken
            // The signed-in user info.
            var user = result.user
            // ...
        }).catch (error => {
            // Handle Errors here.
            var errorCode = error.code
            var errorMessage = error.message
            // The email of the user's account used.
            var email = error.email
            // The firebase.auth.AuthCredential type that was used.
            var credential = error.credential
            // ...
        })
    }

    // Dados do usuário logado
    firebaseUser.uid // Identificador
    firebaseUser.displayName // Nome
    firebaseUser.photoURL // URL de sua foto
})

// Evento chamado para obter a resposta de um autenticação por redirecionamento
auth.getRedirectResult().then(result => {
    if (result.credential) {
        // This gives you a Google Access Token. You can use it to access the Google API.
        var token = result.credential.accessToken
        // ...
    }
    // The signed-in user info.
    var user = result.user
}).catch(error => {
    // Handle Errors here.
    var errorCode = error.code
    var errorMessage = error.message
    // The email of the user's account used.
    var email = error.email
    // The firebase.auth.AuthCredential type that was used.
    var credential = error.credential
    // ...
})

// Desconecta o usuário logado
auth.signOut()
// Pacote para fazer login com a conta do google
// google_sign_in: ^4.5.1
import 'package:google_sign_in/google_sign_in.dart';

// Variável de login com o google
final GoogleSignIn loginGoogle = GoogleSignIn();

// Encaminha para o login com o google e recebe a conta logada
final GoogleSignInAccount contaGoogle = await loginGoogle.signIn();

// Obtém a autenticação da conta do google
final GoogleSignInAuthentication autenticacao = await contaGoogle.authentication;
String idToken = autenticacao.idToken; // ID do token da autenticação
String accessToken = autenticacao.accessToken; // Token de acesso da autenticação

// Pacote de autenticação do Firebase
// firebase_auth: ^0.16.1
import 'package:firebase_auth/firebase_auth.dart';

// Cria a credencial do usuário por base de um provedor de login como o google, o facebook, etc.
final AuthCredential credencial = GoogleAuthProvider.getCredential( // Obtém pelas credenciais do Google
  idToken: autenticacao.idToken, // ID do token da autenticação
  accessToken: autenticacao.accessToken // Token de acesso da autenticação
);

// Faz login no Firebase usando uma credencial
final AuthResult authResult = await FirebaseAuth.instance.signInWithCredential(credencial);

// Obtém o usuário logado
final FirebaseUser usuario = authResult.user;
FirebaseAuth.instance.currentUser(); // Obtém o usuário logado atualmente
String id = usuario.uid; // id do usuário
String nome = usuario.displayName; // Nome do usuário
String fotoPerfil = usuario.photoUrl; // URL da foto de perfil do usuário, por exemplo a foto da conta do Google

// Função que passa o usuário sempre que o estado de login mudar, por exemplo quando um usuário faz o login
FirebaseAuth.instance.onAuthStateChanged.listen((usuario) {});
// Flutter é um framework p/ desenvolvimento, da Google, capaz de criar aplicativos Android e iOS usando apenas um código

/* -------------------- Instalação -------------------- */
/*
Instalando o Flutter
1. Fazer o download do SDK no web site do Flutter para a devida plataforma;
2. Extrair o arquivo baixado, então salvá-lo em um pasta como "C:\src\flutter", o caminho não deve ter espaços ou caracters especiais;
3. Executar o arquivo "flutter_console.bat", então executar o comando "flutter doctor" para ver depedências da instalação;
4. Em um terminal executar o comando "flutter doctor --android-licenses" e aceitar todas as devidas licenças;
5. Instalar o Android Studio e criar um emulador;
6. Adicionar o flutter as variáveis de ambiente do windows, para o usuário e o sistema adicionar na variável "Path" o caminho da pasta
"bin" do flutter, exemplo: "C:\src\flutter\bin", assim os comandos do terminal do flutter serão acessíveis por qualquer terminal;

Utilizando o Flutter com o Visual Studio Code
1. Baixar a extensão do Flutter;
2. Na paleta de comandos executar a ação: ‘Flutter: New Aplicattion Project’ para iniciar um novo projeto;

Utilizando o Flutter com o Android Studio
1. Baixar o plugin do Flutter;
*/

/* -------------------- Comandos -------------------- */
/*
Lançar o aplicativo no dispositivo: flutter run --release
Ver os tipos de build do Flutter: flutter help build
Lançar o aplicativo para um tipo de build determinado, por exemplo apk: flutter build apk
Lançamento para testar performance: flutter run --profile

Obter os pacotes das bibliotecas: flutter pub get

Formatar um arquivo: flutter format lib/main.dart
*/

/* -------------------- Dependências e Versionamento -------------------- */
// Arquivo pubspec.yaml para controlar dependências e versionamento

// Versão do aplicativo, atualiza automaticamente as versões nos arquivos de configuração do Android e iOS ao compilar
// O sinal + separa o nome da versão e o código da versão (número inteiro)
/*
version: 1.0.0+1
*/

// Bibliotecas
/*
dependencies:
  english_words: 3.1.0 # Adicionando uma biblioteca
  shared_preferences: ^0.5.3 # "^" índica que deve ser maior ou igual a versão passada
  sqflite: any # Indica que pode pegar qualquer versão

flutter:
  # Adicionando imagens
  assets:
    - assets/images/lake.jpg # Uma imagem
    - assets/pasta/ # Adicionando todas imagens de uma pasta
  # Adicionando fontes de caracteres
  fonts:
    - family: Poppins
      fonts:
        - asset: assets/fonts/Poppins.ttf
*/

// Definindo o ícone da aplicação
// Adicionar a biblioteca para as dependencies: flutter_launcher_icons: ^0.8.1
// Adicionar a configuração abaixo, salvar e então executar o comando: flutter pub run flutter_launcher_icons:main
/*
flutter_icons:
  android: true # Se o ícone será aplicado ao Android
  ios: true # Se o ícone será aplicado ao iOS
  image_path: "assets/money.png" # Caminho do pubspec.yaml até a imagem
*/

/* -------------------- Bibliotecas -------------------- */
// Site para encontrar bibliotecas
// https://pub.dev
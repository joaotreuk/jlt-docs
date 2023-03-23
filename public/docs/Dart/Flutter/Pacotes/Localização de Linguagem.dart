// Configuração para Uso
/*
# No arquivo 'pubspec.yaml' adicionar a dependência abaixo logo após a dependência do flutter, para permitir diferentes localizações
dependencies:
  flutter_localizations:
    sdk: flutter

# Adicionar a linha 'generate: true' no 'pubspec.yaml' na diretiva referente ao flutter quase no final do arquivo
flutter:
  generate: true

# Biblioteca para controlar o que será mostrado para cada localização
intl: ^0.16.1

# Na pasta raiz do aplicativo criar o arquivo 'l10n.yaml'
# Este arquivo deve ser composto do seguinte código:
arb-dir: lib/l10n # Pasta com os arquivos de configuração de linguagem
template-arb-file: app_en.arb # Linguagem padrão e também a linguagem que deve conter a descrição dos textos
output-localization-file: app_localizations.dart # Nome do arquivo das localizações autogeradas, na pasta '.dart_tool/flutter_gen/gen_l10n'

# Na pasta 'lib' criar a pasta 'l10n', nesta pasta deve ficar os arquivos de localização
# Exemplo de arquivo de localização principal 'app_en.arb' que indica que é a versão para a linguagem inglês, referenciando o código 'en'
{
  # Propriedade: Texto
  "textoInicial": "Hello World!",
  "textoFinal": "Bye!",
  # O arquivo da linguagem principal deve obrigatoriamente conter a descrição dos textos
  "@textoInicial": {
    "description": "Mensagem convencional do início da aplicação"
  },
  "@textoFinal": {
    "description": "Mensagem ao deslogar"
  }
}

# Exemplo de arquivo de localização secundário 'app_pt.arb' que indica que é a versão para a linguagem português, referenciando o código 'pt'
# Não deve conter as descrições
{
  "textoInicial": "Hello World!",
  "textoFinal": "Bye!"
}
*/

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Após fazer as configurações para uso, deve-se adicionar as configurações abaixo na geração do Widget MaterialApp
MaterialApp(
  // Adicionar este código
  localizationsDelegates: [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  // Adicionar as liguagens suportadas
  supportedLocales: [
    const Locale('en', ''),
    const Locale('pt', ''),
  ],
);

@override
Widget build(BuildContext contexto) {
  // Obtendo a linguagem sendo utilizada pelo contexto
  final AppLocalizations localizacao = AppLocalizations.of(contexto);
  String mensagem = localizacao.textoInicial; // Obtendo a mensagem da propriedade 'textoInicial' para a linguagem atual
}

// Definindo o título da aplicação pela mensagem determinada para a linguagem atual
MaterialApp(
  onGenerateTitle: (BuildContext contexto) => AppLocalizations.of(contexto).titulo,
);

// Obtendo dados como o país e a linguagem atuais
Locale myLocale = Localizations.localeOf(contexto);
print(myLocale);
print(myLocale.languageCode);
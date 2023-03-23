// image_picker: ^0.6.7+2
import 'package:image_picker/image_picker.dart';

// No iOS é necessário adicionar as linhas abaixo no arquivo ios/Runner/Info.plist
// Inserir logo antes da tag </dict> fechar
<key>NSPhotoLibraryUsageDescription</key>
<string>Tirar fotos dos contatos.</string> // As tags <string> representam um manifesto do porque quer usar as chaves acima dos mesmos
<key>NSCameraUsageDescription</key>
<string>Selecionar uma foto de contato da galeria.</string>
<key>NSMicrophoneUsageDescription</key>
<string>Tirar fotos dos contatos.</string>

// Abre a câmera e obtem um arquivo da imagem tirada pelo usuário
final PickedFile arquivo = await ImagePicker().getImage(source: ImageSource.camera);
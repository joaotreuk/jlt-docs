// path_provider: ^1.6.11
import 'package:path_provider/path_provider.dart';

// Obter o diretório de documentos, independente se é Android ou iOS
final diretorio = await getApplicationDocumentsDirectory();

// Pega o caminho do diretório
diretorio.path
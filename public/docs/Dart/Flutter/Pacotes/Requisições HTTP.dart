// http: ^0.12.2
import 'package:http/http.dart' as http;

// Recebendo os dados de uma API
http.Response resposta = await http.get("https://api.hgbrasil.com/finance?format=json&key=bd735ceb");

// Dados da resposta, por exemplo um JSON
resposta.body
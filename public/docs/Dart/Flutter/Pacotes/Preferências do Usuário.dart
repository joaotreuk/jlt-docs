// shared_preferences: ^0.5.3
import 'package:shared_preferences/shared_preferences.dart';

// Obtém as preferências salvas
var preferencias = await SharedPreferences.getInstance();

// Lê uma preferência do usuário
var preferencia = preferencias.getInt("Tema");
var preferencia2 = preferencias.getString("Apelido");

// Salvando a preferência "Apelido"
await preferencias.setString("Apelido", "joao");
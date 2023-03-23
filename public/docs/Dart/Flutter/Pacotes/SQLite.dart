// sqflite: ^1.3.1
import 'package:sqflite/sqflite.dart';

// Declarando uma variável de banco de dados
Database _banco;

Future<Database> get banco async {
  // Se o banco de dados for nulo então inicializa o mesmo
  if (_banco != null) return _banco;

  _banco = await initBanco();
  return _banco;
}

// Inicializando o banco de dados
Future<Database> initBanco() async {
  final bancosCaminho = await getDatabasesPath(); // Obtem o caminho do local aonde ficam os bancos de dados
  final caminho = join(bancosCaminho, "tabela.db"); // Junta o caminho com o nome do arquivo do banco desejado

  return await openDatabase(
    caminho, // Caminho do banco
    version: 1, // Versão
    onCreate: (Database banco, int newerVersion) async { // Função chamada quando o banco é criado
      await banco.execute("CREATE TABLE Tabela"); // Executa um comando no banco
    }
  );
}

// Obtem o banco de dados
Database bancoNome = await banco;

// Insere um dado em uma tabela, a chave primária é retornada
id = await bancoNome.insert(
  "Tabela", // Nome da tabela em que os dados serão inseridos
  mapa // Um mapa com os dados a serem inseridos
);

// Faz uma consulta no banco que retorna um mapa para cada linha da consulta
List<Map> mapas = await bancoNome.query(
  "Tabela", // Nome da tabela em que a consulta será realizada
  columns: ["id", "coluna"], // Matriz de colunas consultadas
  where: "id = ?", // Condição da consulta, ? indica um paramêtro
  whereArgs: [id] // Matriz de paramêtros passados para a condição da consulta
);

// Faz uma consulta no banco usando uma query em SQL
List<Map> mapas = await bancoNome.rawQuery("SELECT * FROM Tabela");

// Faz uma deleção em uma tabela, é retornado o número de linhas afetadas
int i = await bancoNome.delete(
  "Tabela", // Nome da tabela de deleção
  where: "id = ?", // Condição da deleção
  whereArgs: [id] // Matriz de paramêtros passados para a condição
);

// Faz uma atualização em uma tabela, é retornado o número de linhas afetadas
int i = await bancoNome.update(
  "Tabela", // Nome da tabela
  mapa, // Um mapa com os novos dados
  where: "id = ?", // Condição
  whereArgs: [id] // Matriz de paramêtros passados para a condição
);

// Seleciona o primeiro número inteiro retornado de uma consulta
Sqflite.firstIntValue(await bancoNome.rawQuery(""));

// Fecha a conexão com o banco
bancoNome.close();
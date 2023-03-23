// cloud_firestore: ^0.13.7
import 'package:cloud_firestore/cloud_firestore.dart';

// Coleções e documentos
CollectionReference colecao = Firestore.instance.collection("usuarios") // Colecao
DocumentReference documento = colecao.document() // Cria um documento com um identificador gerado automaticamente
documento = colecao.document("user1") // Especificando um documento com o seu identificador
colecao = documento.collection("arquivos") // Pegando uma coleção de um documento

// Adicionando dados a um documento, se já existir então será sobrescrito
documento.setData({ // Os dados são passados em formato JSON
  "nome": "Joao",
  "lida": false
});

// Atualizando dados existentes de um documento
documento.updateData({
  "lida": true
});

// Adiciona um novo documento para uma coleção
colecao.add(
  {} // Passando os dados do documento
);

// Obtem um snapshot de todos os documentos de uma coleção, snapshot são os dados do devido momento
QuerySnapshot snapshot = await colecao.getDocuments();

// Obtém uma lista de snapshots dos documentos
List<DocumentSnapshot> snapshots = snapshot.documents;

// Obtem um snapshot de um documento
DocumentSnapshot documentSnapshot = await documento.get();

// Documento
InternalLinkedHashMap<String, dynamic> dados = documentSnapshot.data // Dados do documento
String identificador = documentSnapshot.documentID // Obter o identificador do documento
documentSnapshot.reference.updateData(); // Obtém a referência do documento para fazer uma ação no mesmo

// Uma stream que pode conter um listener
Stream<QuerySnapshot> stream = colecao.snapshots();
stream = colecao.orderBy("horario").snapshots(); // Ordena a coleção por um campo

// Adiciona uma função que é chamada sempre que uma coleção é atualizada, com um snapshot da mesma
stream.listen((snapshot) {});

// Adiciona uma função que é chamada sempre que um documento é atualizado, com um snapshot do mesmo
documento.snapshots().listen((documentSnapshot) {});

// Obtém a data e horário atuais do Firebase
Timestamp.now();
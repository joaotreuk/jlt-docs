// firebase_storage: ^3.1.6
import 'package:firebase_storage/firebase_storage.dart';

// .child("pasta").child("arquivo")

// Cria uma tarefa que faz upload de um arquivo para o Firebase
StorageUploadTask tarefa = FirebaseStorage.instance.ref().child(
  "img1" // Identificador único do arquivo
).putFile(
  arquivo // O arquivo que se será feito o upload
);

// Armazenando um arquivo em uma pasta
FirebaseStorage.instance.ref().child("pasta").child("img1")

// Quando a tarefa for completada, então recebe um snapshot da tarefa, snapshot são os dados do devido momento
StorageTaskSnapshot tarefaSnapshot = await tarefa.onComplete;

// Recebe a URL do arquivo que foi feito o upload na tarefa
String url = await tarefaSnapshot.ref.getDownloadURL();
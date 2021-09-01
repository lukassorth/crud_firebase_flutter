import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _contatos = _firestore.collection('contatos');

class Contatos {
  static Future<void> addContato({
    required String nome,
    required String email,
    required String avatarUrl,
  }) async {
    DocumentReference documentReferencer = _contatos.doc();

    Map<String, dynamic> data = <String, dynamic>{
      'nome': nome,
      'email': email,
      'avatarUrl': avatarUrl,
    };

    await documentReferencer
        .set(data)
        .whenComplete(() => print('Contato cadastrado com sucesso!'))
        .catchError((onError) => print(onError));
  }
}

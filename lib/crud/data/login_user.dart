import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UsuarioLogado extends StatefulWidget {
  @override
  _UsuarioLogadoState createState() => _UsuarioLogadoState();
}

class _UsuarioLogadoState extends State<UsuarioLogado> {
  final auth = FirebaseAuth.instance;
  final currentUser = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Text('Current User'),
          ),
          Center(
            child: RaisedButton(
              child: Text('User'),
              onPressed: () {
                if (currentUser != null) {
                  print(currentUser);
                } else {
                  print('Não logado');
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:crud_firebase_flutter/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final auth = FirebaseAuth.instance;
  late String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/images/logo.png",
                      scale: 0.8,
                    ),
                  ),
                  Text('Seja bem-vindo de volta'),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(hintText: 'Email'),
                    onChanged: (value) {
                      setState(() {
                        _email = value.trim();
                      });
                    },
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Senha'),
                    onChanged: (value) {
                      setState(() {
                        _password = value.trim();
                      });
                    },
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                RaisedButton(
                    color: secundariaDBelle,
                    child: Text('Entrar'),
                    onPressed: () {
                      auth
                          .signInWithEmailAndPassword(
                              email: _email, password: _password)
                          .then((_) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => MainScreen()));
                      });
                    }),
                // RaisedButton(
                //   color: principalDBelle,
                //   child: Text('Cadastrar'),
                //   onPressed: () {
                //     auth
                //         .createUserWithEmailAndPassword(
                //             email: _email, password: _password)
                //         .then((_) {
                //       Navigator.of(context).pushReplacement(MaterialPageRoute(
                //           builder: (context) => MainScreen()));
                //     });
                //   },
                // )
              ])
            ],
          ),
        ),
      ),
    );
  }
}

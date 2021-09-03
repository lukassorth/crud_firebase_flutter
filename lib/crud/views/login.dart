import 'package:crud_firebase_flutter/views/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String _email, _password;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                    color: Theme.of(context).accentColor,
                    child: Text('Entrar'),
                    onPressed: () {
                      auth
                          .signInWithEmailAndPassword(
                              email: _email, password: _password)
                          .then((_) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => DashboardScreen()));
                      });
                    }),
                RaisedButton(
                  color: Theme.of(context).accentColor,
                  child: Text('Cadastrar'),
                  onPressed: () {
                    auth
                        .createUserWithEmailAndPassword(
                            email: _email, password: _password)
                        .then((_) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => DashboardScreen()));
                    });
                  },
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}

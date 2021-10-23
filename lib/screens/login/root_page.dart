import 'package:crud_firebase_flutter/screens/login/login_screen.dart';
import 'package:crud_firebase_flutter/screens/main/main_screen.dart';
import 'package:crud_firebase_flutter/services/repositorio.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RootScreen extends StatefulWidget {
  RootScreen({Key? key}) : super(key: key);

  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final Repositorio _repositorio = Repositorio();
  late Stream<FirebaseUser> _currentUser;

  @override
  void initState() {
    _currentUser = _repositorio.onAuthStateChange;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FirebaseUser>(
      stream: _currentUser,
      builder: (BuildContext context, AsyncSnapshot<FirebaseUser> snapshot) {
        return snapshot.hasData ? MainScreen() : LoginScreen();
      },
    );
  }
}

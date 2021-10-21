import 'package:crud_firebase_flutter/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Text(
              'Login Screen',
              style: TextStyle(
                decoration: null,
                height: 50,
                color: Colors.black,
                backgroundColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

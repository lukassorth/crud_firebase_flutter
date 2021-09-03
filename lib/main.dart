import 'package:crud_firebase_flutter/crud/provider/users.dart';
import 'package:crud_firebase_flutter/crud/routes/app_routes.dart';
import 'package:crud_firebase_flutter/crud/views/home.dart';
import 'package:crud_firebase_flutter/crud/views/login.dart';
import 'package:crud_firebase_flutter/crud/views/user_form.dart';
import 'package:crud_firebase_flutter/crud/views/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

// ignore: todo
// TODO: CRUD Firebase Web cadastro de usuários.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (contexto) => Users(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Crud Firebase',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          brightness: Brightness.dark,
        ),
        routes: {
          AppRoutes.LOGIN: (_) => LoginScreen(),
          AppRoutes.HOME: (_) => HomePage(),
          AppRoutes.USER_LIST: (_) => UserList(),
          AppRoutes.USER_FORM: (_) => UserForm(),
        },
      ),
    );
  }
}

// import 'package:crud_firebase_flutter/provider/users.dart';
// import 'package:crud_firebase_flutter/routes/app_routes.dart';
// import 'package:crud_firebase_flutter/views/home.dart';
import 'package:crud_firebase_flutter/views/login_screen.dart';
// import 'package:crud_firebase_flutter/views/user_form.dart';
// import 'package:crud_firebase_flutter/views/user_list.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

// TODO: CRUD Firebase Web cadastro de usuários.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(
    //       create: (contexto) => Users(),
    //     )
    //   ],
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     title: 'Flutter Crud Firebase',
    //     theme: ThemeData(
    //       primarySwatch: Colors.blue,
    //     ),
    //     routes: {
    //       AppRoutes.HOME: (_) => HomePage(),
    //       AppRoutes.USER_LIST: (_) => UserList(),
    //       AppRoutes.USER_FORM: (_) => UserForm(),
    //     },
    //   ),
    // );
    return MaterialApp(
      title: 'Flutter Crud Firebase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
      ),
      home: LoginScreen(),
    );
  }
}

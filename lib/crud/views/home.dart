import 'package:crud_firebase_flutter/crud/components/carrossel.dart';
import 'package:crud_firebase_flutter/crud/routes/app_routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Página Principal'),
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AppRoutes.LOGIN,
                  );
                },
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CarouselPicker(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Text('Lista de Usuários'),
                color: Colors.red,
                minWidth: 150,
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AppRoutes.USER_LIST,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Text('Formulário'),
                color: Colors.red,
                minWidth: 150,
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AppRoutes.USER_FORM,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:crud_firebase_flutter/components/user_tile.dart';
import 'package:crud_firebase_flutter/provider/users.dart';
import 'package:crud_firebase_flutter/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Lista de Usuários'),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.USER_FORM,
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (contexto, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}

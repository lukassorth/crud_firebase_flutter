import 'package:crud_firebase_flutter/components/user_tile.dart';
import 'package:crud_firebase_flutter/models/user.dart';
import 'package:crud_firebase_flutter/provider/users.dart';
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
            onPressed: () {
              users.put(
                User(name: 'teste', email: 'email', avatarUrl: '', id: ''),
              );
            },
            icon: Icon(Icons.add),
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

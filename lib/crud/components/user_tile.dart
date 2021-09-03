import 'package:crud_firebase_flutter/crud/models/user.dart';
import 'package:crud_firebase_flutter/crud/provider/users.dart';
import 'package:crud_firebase_flutter/crud/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? CircleAvatar(
            child: Icon(Icons.person),
          )
        : CircleAvatar(
            backgroundImage: NetworkImage(user.avatarUrl),
          );

    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.USER_FORM,
                  arguments: user,
                );
              },
            ),
            IconButton(
              color: Colors.red,
              icon: Icon(Icons.delete),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text('Excluir usuário'),
                    content: Text('Tem certeza?'),
                    actions: [
                      FlatButton(
                        child: Text('Não'),
                        onPressed: () => Navigator.of(context).pop(false),
                      ),
                      FlatButton(
                        child: Text('Sim'),
                        onPressed: () => Navigator.of(context).pop(true),
                      ),
                    ],
                  ),
                ).then((confirmed) {
                  //método then como VUEJS
                  if (confirmed) {
                    Provider.of<Users>(context, listen: false).remove(user);
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

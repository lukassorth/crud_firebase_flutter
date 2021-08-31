import 'package:crud_firebase_flutter/models/user.dart';
import 'package:crud_firebase_flutter/provider/users.dart';
import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();

  final Map<String, String> _formData = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário do Usuário'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              _form.currentState!.save();
              Provider.of<Users>(context).put(User(
                id: _formData['id'],
                name: _formData['name'],
                email: _formData['email'],
                avatarUrl: _formData['urlAvatar'],
              ));
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _form,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome'),
                onSaved: (value) => _formData['name'] = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'E-mail'),
                onSaved: (value) => _formData['email'] = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Url Avatar'),
                onSaved: (value) => _formData['urlAvatar'] = value!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

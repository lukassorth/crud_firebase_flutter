import 'dart:math';

import 'package:crud_firebase_flutter/data/dummy_users.dart';
import 'package:crud_firebase_flutter/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Users with ChangeNotifier {
  final Map<String, User> _itens = {...DUMMY_USERS};

  List<User> get all {
    return [..._itens.values];
  }

  int get count {
    return _itens.length;
  }

  User byIndex(int i) {
    return _itens.values.elementAt(i);
  }

  void put(User user) {
    if (user == null) {
      return;
    }

    final id = Random().nextDouble().toString();

    //adicionar
    _itens.putIfAbsent(
        id,
        () => User(
              id: id,
              name: user.name,
              email: user.email,
              avatarUrl: user.avatarUrl,
            ));
    //alterar

    notifyListeners();
  }
}

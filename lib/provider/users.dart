import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/data/dummy_aluno.dart';
import '../models/user.dart';

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
    if (user.id.trim().isNotEmpty && _itens.containsKey(user.id)) {
      _itens.update(user.id, (_) => user);
    } else {
      final id = Random().nextBool().toString();
      _itens.putIfAbsent(
        id,
        () => User(
          id: id,
          nome: user.nome,
          serie: user.serie,
          apresentacao: user.apresentacao,
        ),
      );
    }
    notifyListeners();
  }

  void remove(User user) {
    if (user != null && user.id != null) {
      _itens.remove(user.id);
      notifyListeners();
    }
  }
}

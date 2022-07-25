import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/routes/app_routes.dart';

import '../models/user.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.account_circle),
      title: Text(user.nome),
      subtitle: Text(user.serie),
      trailing: Container(
        width: 90,
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(AppRoutes.CAD_ALUNO, arguments: user);
              },
              icon: Icon(Icons.edit),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

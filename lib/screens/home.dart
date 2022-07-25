import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/user_tile.dart';
import 'package:flutter_application_1/routes/app_routes.dart';
import 'package:flutter_application_1/screens/cadastro_aluno.dart';
import 'package:flutter_application_1/screens/login.dart';
import 'package:provider/provider.dart';
import '../data/dummy_aluno.dart';
import '../provider/users.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback-Presentation App"),
        backgroundColor: Colors.blueAccent,
        leading: Icon(Icons.menu),
        actions: <Widget>[
          TextButton(
            style: style,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            child: const Text('Sair'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CadastroAluno(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.lightBlue, Colors.white]),
        ),
        child: ListView.builder(
          itemCount: users.count,
          itemBuilder: (context, i) => UserTile(users.byIndex(i)),
        ),
      ),
    );
  }
}

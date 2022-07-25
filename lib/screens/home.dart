import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/cadastro_aluno.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
            onPressed: () {},
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
              colors: [Colors.blue, Colors.white]),
        ),
      ),
    );
  }
}

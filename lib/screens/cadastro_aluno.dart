import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/users.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:provider/provider.dart';

import '../models/user.dart';

class CadastroAluno extends StatefulWidget {
  const CadastroAluno({Key? key}) : super(key: key);
  @override
  State<CadastroAluno> createState() => _CadastroAlunoState();
}

class _CadastroAlunoState extends State<CadastroAluno> {
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback-Presentation App"),
        leading: Icon(Icons.menu),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        },
        child: Icon(Icons.arrow_back),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.white]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(
                bottom: 50,
              ),
            ),
            Image.asset(
              "assets/icon_1.png",
              height: 85,
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 35,
              ),
            ),
            Text(
              "CADASTRO DE ALUNO",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
            ),
            Form(
              key: _form,
              child: Column(
                children: [
                  TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                      labelText: "Nome:",
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.white,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Campo inválido!";
                      }
                      return null;
                    },
                    onSaved: (value) => _formData["nome"] = value!,
                  ),
                  TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                      labelText: "Série:",
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.add_rounded,
                        color: Colors.white,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Campo inválido!";
                      }
                      return null;
                    },
                    onSaved: (value) => _formData["serie"] = value!,
                  ),
                  TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                      labelText: "Apresentação:",
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.add_rounded,
                        color: Colors.white,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Campo inválido!";
                      }
                      return null;
                    },
                    onSaved: (value) => _formData["apresentacao"] = value!,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
            ),
            ElevatedButton(
              onPressed: () {
                _form.currentState?.save();
                _form.currentState?.validate();
                Navigator.of(context).pop;
              },
              child: Text("Cadastrar"),
            ),
          ],
        ),
      ),
    );
  }
}

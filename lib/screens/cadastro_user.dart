import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login.dart';

import 'home.dart';

class CadastroUsuario extends StatefulWidget {
  const CadastroUsuario({Key? key}) : super(key: key);

  @override
  State<CadastroUsuario> createState() => _CadastroUsuarioState();
}

class _CadastroUsuarioState extends State<CadastroUsuario> {
  bool showPassword = false;
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
              builder: (context) => LoginScreen(),
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
              "CADASTRO DE USUÁRIO",
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
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "E-mail:",
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextFormField(
                    obscureText: (showPassword == true) ? false : true,
                    decoration: InputDecoration(
                      labelText: "Senha:",
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.key,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextFormField(
                    obscureText: (showPassword == true) ? false : true,
                    decoration: InputDecoration(
                      labelText: "Confirmar Senha:",
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.key,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 50),
                      ),
                      Checkbox(
                          value: showPassword,
                          onChanged: (bool? newValue) {
                            setState(() {
                              showPassword = newValue!;
                            });
                          }),
                      Text(
                        "Mostrar senha",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              child: Text("Cadastrar"),
            ),
          ],
        ),
      ),
    );
  }
}

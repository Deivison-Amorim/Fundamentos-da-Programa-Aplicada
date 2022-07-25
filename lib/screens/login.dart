import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/cadastro_user.dart';
import 'package:flutter_application_1/screens/esqueci_senha.dart';
import 'home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool continueConnected = false;

  final _form = GlobalKey<FormState>();
  String nome = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.white]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/icon_1.png",
              height: 125,
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 35,
              ),
            ),
            Text(
              "TELA DE LOGIN",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
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
                      labelText: "E-mail:",
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Senha:",
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.key,
                        color: Colors.white,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Login ou senha inválido!";
                      }
                      return null;
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EsqueciSenha(),
                  ),
                );
                print("Clique aqui!");
              },
              child: Text(
                "Esqueci a senha!",
                style: TextStyle(color: Colors.blue, fontSize: 13),
                textAlign: TextAlign.right,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
            ),
            ElevatedButton(
              onPressed: () {
                _form.currentState?.validate();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Text("Login"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Divider(
                color: Colors.blue,
              ),
            ),
            Text(
              "Ainda não tem uma conta?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 13,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CadastroUsuario(),
                  ),
                );
              },
              child: Text("Cadastre-se aqui!"),
            ),
          ],
        ),
      ),
    );
  }
}

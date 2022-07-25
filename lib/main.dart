import 'package:flutter/material.dart'
    show BuildContext, MaterialApp, StatelessWidget, Widget, runApp;
import 'package:flutter_application_1/provider/users.dart';
import 'package:flutter_application_1/routes/app_routes.dart';
import 'package:flutter_application_1/screens/cadastro_aluno.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/screens/login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Users(),
      child: MaterialApp(
        title: 'Feedback-Presentantion',
        home: LoginScreen(),
        //routes: {
        //AppRoutes.HOME: (_) => LoginScreen(),
        //AppRoutes.CAD_ALUNO: (_) => CadastroAluno(),
        //},
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

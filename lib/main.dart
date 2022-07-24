import 'package:flutter/material.dart'
    show BuildContext, MaterialApp, StatelessWidget, Widget, runApp;
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feedback-Presentantion',
      home: LoginScreeen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
// variables a utilizar 

class _LoginPageState extends State<LoginPage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenido a Fapptura"),
      ),
      body: Padding(padding: const EdgeInsets.all(20.0)),
    );
  }
}
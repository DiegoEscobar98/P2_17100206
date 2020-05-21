
import 'package:fapptura_v1/src/paginas/DireccionFiscal.dart';
import 'package:fapptura_v1/src/paginas/Menu.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
// variables a utilizar 

class _LoginPageState extends State<LoginPage> {
  final formkey = new GlobalKey<FormState>();
  String _strEmail;
  String _strPassword;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Builder(
        builder: (context)=>
    Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(padding: const EdgeInsets.all(20.0),
      child: Form(key: formkey,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (valor) =>!valor.contains("@")?"Email invalido":null,
              onSaved: (valor)=> _strEmail = valor,
              decoration:  InputDecoration(labelText: "Email"),
            ),
            SizedBox(height: 30.0),
            TextFormField(
              validator: (valor) => valor.length < 8 ?"Password muy corta":null,
              onSaved: (valor)=> _strPassword = valor,
              decoration:  InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 30.0),
            RaisedButton(
              child: Text("Iniciar Sesion"),
              onPressed: (){final form = formkey.currentState;
              if(form.validate())

              {form.save();
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MenuPrincipal()));
                
              }},
            )
          ],
        ),
      ),
      
      ),
      ),
    ),
    ),
    );
  }
}
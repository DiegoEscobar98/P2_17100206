
import 'package:fapptura_v1/src/paginas/Menu.dart';
import 'package:fapptura_v1/src/paginas/login.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (debugShowCheckedModeBanner: false,
      home: MenuPrincipal(),// lo cabiare por menu pero debe ser loginPage
    );
  }
}
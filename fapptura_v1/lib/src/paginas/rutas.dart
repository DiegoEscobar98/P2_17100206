import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget{
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Pagina 2"),
    ),
    body: Center(
      child: RaisedButton(onPressed: (){
        Navigator.pop(context);
      }),
    ),
  );
}

}
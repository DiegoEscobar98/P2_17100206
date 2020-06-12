import 'package:flutter/material.dart';


class ClientesList extends StatefulWidget {
  @override
  _ClientesListState createState() => _ClientesListState();
}

class _ClientesListState extends State<ClientesList> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar: AppBar(
        title: Text("Listado clientes"),
        centerTitle: true,
        ),
      body: Padding(padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            
          ],
        ),

       )
      ),  
    );
  }
}
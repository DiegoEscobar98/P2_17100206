import 'package:flutter/material.dart';



class ListadoSucursales extends StatefulWidget {
  @override
  _ListadoSucursalesState createState() => _ListadoSucursalesState();
}

class _ListadoSucursalesState extends State<ListadoSucursales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Text("Listado sucursales"),
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
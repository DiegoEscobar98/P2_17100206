import 'package:flutter/material.dart';



class ListadoFacturas extends StatefulWidget {
  @override
  _ListadoFacturasState createState() => _ListadoFacturasState();
}

class _ListadoFacturasState extends State<ListadoFacturas> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar: AppBar(
        title: Text("Listado Facturas"),
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
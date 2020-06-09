import 'package:flutter/material.dart';
class PaginaFiscal extends StatefulWidget {
  @override
  _PaginaFiscalState createState() => _PaginaFiscalState();
}

class _PaginaFiscalState extends State<PaginaFiscal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Direccion Fiscal"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
          children: <Widget>[
           TextField(textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                 
                ),
                hintText:"Calle" ,labelText: "Calle", ),
              ),
               SizedBox(height: 10,),
             TextField(textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                ),
                hintText:"Codigo Postal" ,labelText: "Codigo Postal",),
              ),
               SizedBox(height: 10,),
             TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                ),
                hintText:"NºExterior" ,labelText: "NºExterior",),
              ),
               SizedBox(height: 10,),
             TextField(textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                ),
                hintText:"Colonia" ,labelText: "Colonia",),
              ),
               SizedBox(height: 10,),
             TextField(textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                ),
                hintText:"Ciudad" ,labelText: "Ciudad", ),
              ),
               SizedBox(height: 10,),
             TextField(textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                ),
                hintText:"Estado" ,labelText: "Estado", ),
              ),
               SizedBox(height: 10,),
             TextField(textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                ),
                hintText:"Municipio" ,labelText: "Municipio",),
              ),
               SizedBox(height: 10,),
             TextField(textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                ),
                hintText:"Pais" ,labelText: "Pais", ),
              ),
              OutlineButton.icon(onPressed: (){}, icon: Icon(Icons.check), label: Text("Guardar"),shape: StadiumBorder(),highlightColor: Colors.green[500])
          ],
        ),
        ),
      ),
    );
  }
}
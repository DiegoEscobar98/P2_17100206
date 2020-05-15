import 'package:flutter/material.dart';




class InfoEmpresa extends StatefulWidget {
  @override
  _InfoEmpresaState createState() => _InfoEmpresaState();
}

class _InfoEmpresaState extends State<InfoEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informacion de la empresa"),
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
                      hintText:"Razon Social" ,labelText: "Razon Social", ),
              ),
               SizedBox(height: 10,),
                TextField(textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                ),
                      hintText:"Nombre Comercial" ,labelText: "Nombre Comercial",),
              ),
               SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                ),
                      hintText:"RFC" ,labelText: "RFC",),
              ),
                OutlineButton.icon(onPressed: (){}, icon: Icon(Icons.check), label: Text("Guardar"),shape: StadiumBorder(),highlightColor: Colors.green[500])
          ],
        ),
        ),
      ),
    );
  }
}
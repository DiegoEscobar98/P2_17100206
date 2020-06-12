import 'package:flutter/material.dart';

class NuevaSucursal extends StatefulWidget {
  @override
  _NuevaSucursalState createState() => _NuevaSucursalState();
}

class _NuevaSucursalState extends State<NuevaSucursal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nueva Sucursal"),
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
                      hintText:"Nombre Sucursal" ,labelText: "Nombre Sucursal", ),
              ),
               SizedBox(height: 10,),
                TextField(textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                ),
                      hintText:"Calle" ,labelText: "Calle",),
              ),
               SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                ),
                      hintText:"Numero Exterior" ,labelText: "Numero Exterior",),
              ),
               SizedBox(height: 10,),
                TextField(textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                ),
                      hintText:"Código Postal" ,labelText: "Código Postal",),
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
                      hintText:"Ciudad" ,labelText: "Ciudad",),
              ),
               SizedBox(height: 10,),
                TextField(textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                ),
                      hintText:"Estado" ,labelText: "Estado",),
              ),
               SizedBox(height: 10,),
                TextField(textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                ),
                      hintText:"Pais" ,labelText: "Pais",),
              ),
                OutlineButton.icon(onPressed: (){}, icon: Icon(Icons.check), label: Text("Agregar"),shape: StadiumBorder(),highlightColor: Colors.green[500])
          ],
        ),
        ),
      ),
    );
  }
}
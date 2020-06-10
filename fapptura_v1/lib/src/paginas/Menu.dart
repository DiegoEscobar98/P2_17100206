
import 'package:fapptura_v1/src/paginas/DireccionFiscal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../NuevaFactura.dart';
import 'Inf_Empresa.dart';
import 'NuevaSucursal.dart';
import 'NuevoCliente.dart';
import 'NuevoProducto.dart';
import 'ayuda.dart';

class MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Builder(
        builder: (context)=>
    Scaffold(
        appBar: AppBar(
          title: Text('Fapptura'),
          centerTitle: true,
        ),
        floatingActionButton: SpeedDial(
          curve: Curves.easeInExpo,
          animatedIcon: AnimatedIcons.menu_close,
          overlayColor: Colors.blueAccent,
          backgroundColor: Colors.blueAccent,
          animatedIconTheme: IconThemeData.fallback(),
          shape: CircleBorder(),
          children: [
            SpeedDialChild(
              child: Icon(Icons.person_add),
              backgroundColor: Colors.green,
              label: "Nuevo Cliente",
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> NuevoCliente()));}
            ),
             SpeedDialChild(
              child: Icon(Icons.book),
              backgroundColor: Colors.purple,
              label: "Nueva Factura",
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> NuevaFactura()));}
            ), SpeedDialChild(
              child: Icon(Icons.card_giftcard),
              backgroundColor: Colors.red,
              label: "Nuevo Producto",
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> NuevoProducto()));}
              
            ),
             SpeedDialChild(
              child: Icon(Icons.store),
              backgroundColor: Colors.lightBlue,
              label: "Nueva sucursal",
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> NuevaSucursal()));}
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                "Perfil",
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Informacion de la empresa"),
              onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> InfoEmpresa()));}
            ),
            ListTile(
              leading: Icon(Icons.directions),
              title: Text("Direccion fiscal"),
              onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> PaginaFiscal()));},
            ),
            ],
          ),
        ),
        body:Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF009fff),Color(0xFFec2f4b)],
                begin: Alignment.centerLeft,
                end: Alignment(1.0,0.9),
                ),
            ),
            child: SingleChildScrollView(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
              child: Padding(
                padding:const EdgeInsets.all(10),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.account_box),color: Colors.cyan, tooltip:"Listado de clientes" ,onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> PaginaFiscal()));
                      },iconSize: 80,),
                        SizedBox(height: 10,),
                          Text("Clientes")
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding:const EdgeInsets.all(10),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.card_giftcard),color: Colors.cyan, tooltip:"Lista de Productos" ,onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> PaginaFiscal()));
                      },iconSize: 80,),
                        SizedBox(height: 10,),
                          Text("Productos")
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding:const EdgeInsets.all(10),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.book),color: Colors.cyan, tooltip:"Lista de Facturas" ,onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> PaginaFiscal()));
                      },iconSize: 80,),
                        SizedBox(height: 10,),
                          Text("Facturas")
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding:const EdgeInsets.all(10),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.store),color: Colors.cyan, tooltip:"Lista de sucursales" ,onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> PaginaFiscal()));
                      },iconSize: 80,),
                        SizedBox(height: 10,),
                          Text("Sucursales")
                    ],
                  ),
                ),
              ),
            ),
          
              ],
            ),
            ),
          ),
          ),
        ),    
      
    );
  }
}
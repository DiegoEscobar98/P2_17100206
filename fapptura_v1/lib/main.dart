

import 'package:fapptura_v1/src/paginas/DireccionFiscal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
    
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
              label: "Nuevo Cliente"
            ),
             SpeedDialChild(
              child: Icon(Icons.book),
              backgroundColor: Colors.purple,
              label: "Nueva Factura"
            ), SpeedDialChild(
              child: Icon(Icons.card_giftcard),
              backgroundColor: Colors.red,
              label: "Nuevo Producto"
            ),
             SpeedDialChild(
              child: Icon(Icons.store),
              backgroundColor: Colors.lightBlue,
              label: "Nueva sucursal"
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
              leading: Icon(Icons.edit),
              title: Text("Editar Perfil"),
              onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=> PaginaFiscal()));}
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Informacion de la empresa"),
            ),
            ListTile(
              leading: Icon(Icons.directions),
              title: Text("Direccion fiscal"),
            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text("Ayuda"),
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



        // body: GridView.count(crossAxisCount: 2,
        // children: <Widget>[
        //   Card(
        //       child: Padding(
        //         padding:const EdgeInsets.all(10),
        //         child: Center(
        //           child: Column(
        //             mainAxisSize: MainAxisSize.min,
        //             children: <Widget>[
        //               IconButton(icon: Icon(Icons.location_on),color: Colors.cyan, tooltip:"Direccion Fiscal" ,onPressed: (){
        //                 Navigator.push(context, MaterialPageRoute(builder: (context)=> PaginaFiscal()));
        //               },iconSize: 80,),
        //                 SizedBox(height: 10,),
        //                   Text("Direccion Fiscal")
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //     Card(
        //       child: Padding(
        //         padding:const EdgeInsets.all(10),
        //         child: Center(
        //           child: Column(
        //             mainAxisSize: MainAxisSize.min,
        //             children: <Widget>[
        //               IconButton(icon: Icon(Icons.menu),color: Colors.cyan, tooltip:"Menu" ,onPressed: (){
        //                 Navigator.push(context, MaterialPageRoute(builder: (context)=> PaginaFiscal()));
        //               },iconSize: 80,),
        //                 SizedBox(height: 10,),
        //                   Text("Menu")
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //     Card(
        //       child: Padding(
        //         padding:const EdgeInsets.all(10),
        //         child: Center(
        //           child: Column(
        //             mainAxisSize: MainAxisSize.min,
        //             children: <Widget>[
        //               IconButton(icon: Icon(Icons.description),color: Colors.cyan, tooltip:"Informacion de la compañia" ,onPressed: (){
        //                 Navigator.push(context, MaterialPageRoute(builder: (context)=> InfoEmpresa()));
        //               },iconSize: 80,),
        //                 SizedBox(height: 10,),
        //                   Text("Inf. de la compañia")
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //     Card(
        //       child: Padding(
        //         padding:const EdgeInsets.all(10),
        //         child: Center(
        //           child: Column(
        //             mainAxisSize: MainAxisSize.min,
        //             children: <Widget>[
        //               IconButton(icon: Icon(Icons.store),color: Colors.cyan, tooltip:"Sucursales" ,onPressed: (){
        //                 Navigator.push(context, MaterialPageRoute(builder: (context)=> PaginaFiscal()));
        //               },iconSize: 80,),
        //                 SizedBox(height: 10,),
        //                   Text("Sucursales")
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //     Card(
        //       child: Padding(
        //         padding:const EdgeInsets.all(10),
        //         child: Center(
        //           child: Column(
        //             mainAxisSize: MainAxisSize.min,
        //             children: <Widget>[
        //               IconButton(icon: Icon(Icons.help),color: Colors.cyan, tooltip:"Ayuda" ,onPressed: (){
        //                 Navigator.push(context, MaterialPageRoute(builder: (context)=> PaginaFiscal()));
        //               },iconSize: 80,),
        //                 SizedBox(height: 10,),
        //                   Text("Ayuda")
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //     Card(
        //       child: Padding(
        //         padding:const EdgeInsets.all(10),
        //         child: Center(
        //           child: Column(
        //             mainAxisSize: MainAxisSize.min,
        //             children: <Widget>[
        //               IconButton(icon: Icon(Icons.monetization_on),color: Colors.cyan, tooltip:"Impuestos" ,onPressed: (){
        //                 Navigator.push(context, MaterialPageRoute(builder: (context)=> PaginaFiscal()));
        //               },iconSize: 80,),
        //                 SizedBox(height: 10,),
        //                   Text("Impuestos")
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //     Card(
        //       child: Padding(
        //         padding:const EdgeInsets.all(10),
        //         child: Center(
        //           child: Column(
        //             mainAxisSize: MainAxisSize.min,
        //             children: <Widget>[
        //               IconButton(icon: Icon(Icons.home),color: Colors.cyan, tooltip:"Home" ,onPressed: (){
        //                 Navigator.push(context, MaterialPageRoute(builder: (context)=> PaginaFiscal()));
        //               },iconSize: 80,),
        //                 SizedBox(height: 10,),
        //                   Text("Home")
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //     Card(
        //       child: Padding(
        //         padding:const EdgeInsets.all(10),
        //         child: Center(
        //           child: Column(
        //             mainAxisSize: MainAxisSize.min,
        //             children: <Widget>[
        //               IconButton(icon: Icon(Icons.add_circle),color: Colors.cyan, tooltip:"Agregar" ,onPressed: (){
        //                 Navigator.push(context, MaterialPageRoute(builder: (context)=> PaginaFiscal()));
        //               },iconSize: 80,),
        //                 SizedBox(height: 10,),
        //                   Text("Agregar")
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        // ],
        // ),






        
        // bottomNavigationBar: BottomNavigationBar(
        //  currentIndex: _indice,
        //   items: [

        //     BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("ola"),backgroundColor: Colors.blue),

        //     BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("ola"),backgroundColor: Colors.blue),

        //     BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("ola"),backgroundColor: Colors.blue),

        //     BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("ola"),backgroundColor: Colors.blue),

        //   ],
        //   onTap: (index){
        //     setState((){});
        //   },
        // ),
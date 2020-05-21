
import 'package:fapptura_v1/src/paginas/login.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      home: LoginPage(),
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
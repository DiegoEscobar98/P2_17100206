
import 'package:flutter/material.dart';

class Ayuda extends StatefulWidget {
  @override
  _AyudaState createState() => _AyudaState();
}

class _AyudaState extends State<Ayuda> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Builder(
        builder: (context)=>
    Scaffold(
      appBar: AppBar(title: Text("Gola"),
      centerTitle: true,),
      body: Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('Necesitas ayuda?',style:TextStyle(fontSize: 20)),
            Text('Contactanos en',style:TextStyle(fontSize: 20)),
            Text('MiFactura@gmail.com',style:TextStyle(fontSize: 20)),
            Text('o llamanos al:',style:TextStyle(fontSize: 20)),
            Text('01 800 867 252 0788',style:TextStyle(fontSize: 20)),
          ],
         
        ),
      ),),
      ),
      ),    
      
    );
  }
}
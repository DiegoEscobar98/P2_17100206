import 'package:flutter/material.dart';
class NuevoProducto extends StatefulWidget {
  @override
  _NuevoProductoState createState() => _NuevoProductoState();
}

  
class _NuevoProductoState extends State<NuevoProducto> {
  List _cities =
  ["IVA 16%", "IVA 8%", "IVA 0%", "ISR 30%"];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentCity;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentCity = _dropDownMenuItems[0].value;
    super.initState();
  }
  // here we are creating the list needed for the DropDownButton
  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String city in _cities) {
      // here we are creating the drop down menu items, you can customize the item right here
      // but I'll just use a simple text for this
      items.add(new DropdownMenuItem(
          value: city,
          child: new Text(city)
      ));
    }
    return items;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nuevo Producto"),
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
                hintText:"Nombre Artículo" ,labelText: "Nombre Artículo", ),
              ),
               SizedBox(height: 10,),
             TextField(textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                ),
                hintText:"Clave SAT" ,labelText: "Clave SAT",),
              ),
               SizedBox(height: 10,),
             TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                ),
                hintText:"Descripción" ,labelText: "Descripción",),
              ),
               SizedBox(height: 10,),
             TextField(textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                ),
                hintText:"Unidad SAT" ,labelText: "Unidad SAT",),
              ),
               SizedBox(height: 10,),
             TextField(textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                ),
                hintText:"Precio Unitario" ,labelText: "Precio Unitario", ),
              ),
               SizedBox(height: 10,),
               new Text("Impuesto "),
              new Container(
                padding: new EdgeInsets.all(16.0),
              ),
              new DropdownButton(
                value: _currentCity,
                items: _dropDownMenuItems,
                onChanged: changedDropDownItem,  
              ),
                OutlineButton.icon(onPressed: (){}, icon: Icon(Icons.check), label: Text("Agregar"),shape: StadiumBorder(),highlightColor: Colors.green[500])
          ],
        ),
        ),
      ),
    );
  }
   void changedDropDownItem(String selectedCity) {
    setState(() {
      _currentCity = selectedCity;
    });
  }
}
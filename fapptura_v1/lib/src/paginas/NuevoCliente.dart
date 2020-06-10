import 'package:flutter/material.dart';
class NuevoCliente extends StatefulWidget {
  @override
  _NuevoClienteState createState() => _NuevoClienteState();
}

  
class _NuevoClienteState extends State<NuevoCliente> {
  List _cities =
  ["Efectivo", "Tarjeta credito", "Tarjeta debito"];
  



List<String> _locations = ['Adquisicion de mercancias', 'Devoluciones, descuentos o bonificaciones', 'Gastos en general', 'Construcciones','Equipo de transporte','Comunicaciones satelitales']; // Option 2
  String _selectedLocation; // Option 2

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
        title: Text("Nuevo Cliente"),
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
                hintText:"Nombre o Razon Social" ,labelText: "Nombre o Razon Social", ),
              ),
               SizedBox(height: 10,),
             TextField(textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                ),
                hintText:"Correo electronico" ,labelText: "Correo electronico",),
              ),
               SizedBox(height: 10,),
             TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                ),
                hintText:"RFC" ,labelText: "RFC",),
              ),
               SizedBox(height: 10,),
               new Text("Uso del CFDI "),
              new Container(
                padding: new EdgeInsets.all(16.0),
              ),
              new DropdownButton(
                value: _currentCity,
                items: _dropDownMenuItems,
                onChanged: changedDropDownItem,  
              ),
              SizedBox(height: 20,),
               new Text("Uso del CFDI "),
              new Container(
                padding: new EdgeInsets.all(16.0),
              ),
               DropdownButton(
            hint: Text('Please choose a location'), // Not necessary for Option 1
            value: _selectedLocation,
            onChanged: (newValue) {
              setState(() {
                _selectedLocation = newValue;
              });
            },
            items: _locations.map((location) {
              return DropdownMenuItem(
                child: new Text(location),
                value: location,
              );
            }).toList(),),
                OutlineButton.icon(onPressed: (){}, icon: Icon(Icons.check), label: Text("Guardar"),shape: StadiumBorder(),highlightColor: Colors.green[500])
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
import 'package:flutter/material.dart';
class NuevaFactura extends StatefulWidget {
  @override
  _NuevaFacturaState createState() => _NuevaFacturaState();
}

  
class _NuevaFacturaState extends State<NuevaFactura> {

List<String> _locations = ['Adquisicion de mercancias', 'Devoluciones, descuentos o bonificaciones', 'Gastos en general', 'Construcciones','Equipo de transporte','Comunicaciones satelitales']; // Option 2
  String _selectedLocation; // Option 2

  @override
  void initState() {
    super.initState();
  }
  // here we are creating the list needed for the DropDownButton
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nueva Factura"),
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
                hintText:"Cliente" ,labelText: "Cliente",),
              ),
               SizedBox(height: 10,),
                new Text("Metodo de pago "),
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
               
               SizedBox(height: 10,),
                new Text("Forma de pago"),
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
            
               SizedBox(height: 10,),
             TextField(textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                ),
                hintText:"Fecha CFDI" ,labelText: "Fecha CFDI",),
              ),
               SizedBox(height: 10,),
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
            SizedBox(height: 10,),
              new Text("Tipo moneda"),
              new Container(
              padding: new EdgeInsets.all(8.0),
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
            TextField(textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                ),
                hintText:"Terminos" ,labelText: "Terminos",),
              ),
               SizedBox(height: 10,),
                TextField(textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                ),
                hintText:"Nota(Opcional)" ,labelText: "Nota(Opcional)",),
              ),
               SizedBox(height: 10,),
                TextField(textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                ),
                hintText:"Folio" ,labelText: "Folio",),
              ),
               SizedBox(height: 10,),
                TextField(textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
                ),
                hintText:"Descuento" ,labelText: "Descuento",),
              ),
               SizedBox(height: 10,),
               Container(
                 child: Row(
                   children: <Widget>[
                      OutlineButton.icon(onPressed: (){}, icon: Icon(Icons.check), label: Text("Guardar"),shape: StadiumBorder(),highlightColor: Colors.green[500]),
                       OutlineButton.icon(onPressed: (){}, icon: Icon(Icons.check), label: Text("Timbrar"),shape: StadiumBorder(),highlightColor: Colors.green[500])
                   ],
                 ),
               ),
          ],
        ),
        ),
      ),
    );
  }
}
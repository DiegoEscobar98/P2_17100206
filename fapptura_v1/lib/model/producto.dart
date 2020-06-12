import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';


class producto{
  String _id;
  String _name;
  String _clavesat;
  String _descripcion;
  String _unidadsat;
  String _preciounitario;
  String _impuesto;

  producto(this._id,this._name,this._clavesat,this._descripcion,this._unidadsat,this._preciounitario,this._impuesto);

  producto.map(dynamic objeto){
    this._name=objeto['name'];
    this._clavesat=objeto['clavesat'];
    this._descripcion=objeto['descripcion'];
    this._unidadsat=objeto['unidadsat'];
    this._preciounitario=objeto['preciounitario'];
    this._impuesto=objeto['impuesto'];
  }
  String get id => _id;
  String get name =>name;
  String get clavesat =>_clavesat;
  String get descripcion => _descripcion;
  String get unidadsat =>_unidadsat;
  String get preciounitario => _preciounitario;
  String get impuesto =>_impuesto;

  producto.fromSnapShot(DataSnapshot snapshot)
  {
    _id = snapshot.key;
    _name= snapshot.value['name'];
    _clavesat= snapshot.value['clavesat'];
    _descripcion= snapshot.value['descripcion'];
    _unidadsat= snapshot.value['unidadsat'];
    _preciounitario= snapshot.value['preciounitario'];
    _impuesto= snapshot.value['impuesto'];
  }

}
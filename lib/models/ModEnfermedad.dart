import 'package:flutter/material.dart';

class ModEnfermedad {
  String nombreEnf, descripcionEnf, url, imgEnf, peso;

  ModEnfermedad(
      {this.imgEnf, this.nombreEnf, this.descripcionEnf, this.url, this.peso});

  factory ModEnfermedad.fromJSON(Map<String, dynamic> map) {
    return ModEnfermedad(
        imgEnf: map['imgEnf'].toString(),
        nombreEnf: map['nombreEnf'].toString(),
        descripcionEnf: map['descripcionEnf'].toString(),
        url: map['url'].toString(),
        peso: map['peso'].toString());
  }

  Map<String, String> toJSON() {
    return {
      'imgEnf': imgEnf,
      'nombreEnf': nombreEnf,
      'descripcionEnf': descripcionEnf,
      'url': url,
      'peso': peso,
    };
  }
}

import 'package:flutter/material.dart';
import 'package:healthyjear/Enfermedad.dart';
import 'package:healthyjear/Informacion/Edad.dart';
import 'package:healthyjear/Informacion/Estatura.dart';
import 'package:healthyjear/Informacion/Inicio.dart';
import 'package:healthyjear/Informacion/Nombre.dart';

class SpS extends StatefulWidget {
  @override
  _SpSState createState() => _SpSState();
}

class _SpSState extends State<SpS> {
  void initState() {
    super.initState();
    _mo().then((status) {
      if (status) {
        _navigate();
      }
    });
  }

  Future<bool> _mo() async {
    await Future.delayed(Duration(seconds: 3), () {});
    return true;
  }

  void _navigate() {
    Navigator.of(context).pushReplacement(
        //MaterialPageRoute(builder: (BuildContext context) => Enfermedad()));
        MaterialPageRoute(builder: (BuildContext context) => Inicio()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Image.asset(
                'image/Screan.jpg',
                width: MediaQuery.of(context).size.width,
              ),
              Text(
                "",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

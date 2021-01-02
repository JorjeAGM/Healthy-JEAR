import 'package:flutter/material.dart';
import 'package:healthyjear/Informacion/Alimentos.dart';
import 'package:healthyjear/Informacion/Dieta.dart';
import 'package:healthyjear/Informacion/Edad.dart';
import 'package:healthyjear/Informacion/Estatura.dart';
import 'package:healthyjear/Informacion/Nombre.dart';
import 'package:healthyjear/Informacion/Peso.dart';
import 'package:healthyjear/Informacion/analisis.dart';
import 'package:healthyjear/Informacion/enfermedades.dart';
import 'package:healthyjear/Informacion/paquetes.dart';
import 'package:healthyjear/Login.dart';
import 'package:healthyjear/Enfermedad.dart';
import 'package:healthyjear/SpS.dart';
import 'DashBoard.dart';
/*import 'package:splashscreen/splashscreen.dart';*/
import 'package:healthyjear/Verduras.dart';
import 'package:healthyjear/Frutas.dart';
import 'package:healthyjear/Info.dart';

import 'Informacion/Inicio.dart';

////////////////////////////// Main ///////////////////////////////////
void main() => runApp(Healthy_JEAR());

//////////////////////// Widget Principal /////////////////////////////
class Healthy_JEAR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthy-JEAR',
      home: SpS(),
      routes: {
        '/Home': (BuildContext context) => DashBoard(),
        '/Inicio': (BuildContext context) => Inicio(),
        '/Alimentos': (BuildContext context) => Alimentos(),
        '/Enfermedades': (BuildContext context) => enfermedades(),
        '/paquetes': (BuildContext context) => paquetes(),
        '/Analisis': (BuildContext context) => analisis(),
        '/Dieta': (BuildContext context) => Dieta(),
        '/Nombre': (BuildContext context) => Nombre(),
        '/Verduras': (BuildContext context) => Verduras(),
        '/Frutas': (BuildContext context) => Frutas(),
        '/Info': (BuildContext context) => Info(),
        '/Login': (BuildContext context) => Login(),
        '/SpS': (BuildContext context) => SpS(),
        '/Edad': (BuildContext context) => Edad(),
        '/Estatura': (BuildContext context) => Estatura(),
        '/Peso': (BuildContext context) => Peso(),
        '/Enfermedad': (BuildContext context) => Enfermedad(),
        '/pag1': (BuildContext context) => Enfermedad().websides(context),
        '/Obesidad': (BuildContext context) => Enfermedad().build(context),
        '/Desnutricion': (BuildContext context) => Enfermedad().build2(context)
      },
    );
  }
}

//////////////////////////////Widgets///////////////////////////////////
/*class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override

  /////////////SplashScreen///////////////////
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      image: Image.asset("image/logo.png"),
      photoSize: 300.0,
      title: Text("Un Exterior sano, comienza desde el interior",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
      navigateAfterSeconds: DashBoard(),
      gradientBackground: LinearGradient(
                 begin:Alignment.center,
                 end: Alignment.bottomCenter
      ),
      )
      ;
  }
}*/

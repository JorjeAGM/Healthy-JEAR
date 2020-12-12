import 'package:flutter/material.dart';
import 'package:healthyjear/Login.dart';
import 'package:healthyjear/SpS.dart';
import 'DashBoard.dart';
/*import 'package:splashscreen/splashscreen.dart';*/
import 'package:healthyjear/Verduras.dart';
import 'package:healthyjear/Frutas.dart';
import 'package:healthyjear/Enfermedad.dart';
import 'package:healthyjear/Info.dart';

////////////////////////////// Main ///////////////////////////////////
void main() => runApp(Healthy_JEAR());

//////////////////////// Widget Principal /////////////////////////////
class Healthy_JEAR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Healthy-JEAR",
      home: SpS(),
      

      routes: {
      '/Home' : (context) => DashBoard(),
      '/Verduras' : (context) => Verduras(),
      '/Frutas' : (context) => Frutas(),
      '/Enfermedad' : (context) => Enfermedad(),
      '/Info' : (context) => Info(),
      '/Login' : (context) => Login(),
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
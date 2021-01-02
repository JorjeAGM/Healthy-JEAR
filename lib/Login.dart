import 'package:flutter/material.dart';
import 'package:slimy_card/slimy_card.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: login(),
    );
  }
}

Widget login() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
      image: AssetImage("image/Frojos.jpg"),
      fit: BoxFit.cover,
    )),
    child: ListView(
      children: <Widget>[
        SizedBox(
          height: 60,
        ),
        SlimyCard(
          color: Colors.blue,
          topCardHeight: 400,
          topCardWidget: CardTop(),
          bottomCardHeight: 280,
          bottomCardWidget: CardBottom(),
        ),
      ],
    ),
  );
}

class CardTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Image(
          image: AssetImage("image/Icoco.png"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text("Healthy-JEAR",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            )),
      ),
      Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text(
          "Healthy-JEAR es una aplicacion la cual pretende ayudarte con tu disiplina nutricional.",
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
      )
    ]);
  }
}

class CardBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Text("Login",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Usuairio",
                  fillColor: Colors.white24,
                  filled: true,
                  prefixIcon: Icon(Icons.supervised_user_circle),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Contraseña",
                  fillColor: Colors.white24,
                  filled: true,
                  prefixIcon: Icon(Icons.remove_red_eye),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text(
                "Ingresar",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/Home');
              },
              shape: StadiumBorder(),
            ),
          )
        ],
      ),
    );
  }
}
